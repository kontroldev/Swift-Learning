# Cláusulas `where` Contextuales en Swift

Las **cláusulas `where` contextuales** permiten agregar restricciones en extensiones, métodos o declaraciones de protocolo sin afectar la declaración principal del tipo genérico. Esto proporciona mayor flexibilidad y especificidad en el código genérico.

## Uso de `where` en una Extensión Genérica

```swift
extension Container where Item: Equatable {
    func contains(_ item: Item) -> Bool {
        for element in items {
            if element == item {
                return true
            }
        }
        return false
    }
}
```

### Explicación:
- La extensión **solo aplica a tipos donde `Item` conforma `Equatable`**.
- `contains(_:)` permite verificar si un elemento está en el contenedor.

## Uso de `where` en un Método Genérico

```swift
func commonElements<T: Sequence, U: Sequence>(_ seq1: T, _ seq2: U) -> [T.Element] 
where T.Element == U.Element, T.Element: Equatable {
    return seq1.filter { seq2.contains($0) }
}
```

### Explicación:
- `T` y `U` deben ser **secuencias** (`Sequence`).
- `T.Element == U.Element` asegura que ambos contienen el mismo tipo de elementos.
- `T.Element: Equatable` permite comparar los elementos con `==`.

### Uso de la Función
```swift
let array1 = [1, 2, 3, 4]
let array2 = [3, 4, 5, 6]
print(commonElements(array1, array2)) // [3, 4]
```

## Beneficios de las Cláusulas `where` Contextuales
- **Mayor flexibilidad** al definir restricciones solo donde se necesitan.
- **Evitan imponer restricciones innecesarias** en la declaración principal de los genéricos.
- **Facilitan la reutilización de código** en diferentes contextos.

