# Funciones Genéricas en Swift

Las **funciones genéricas** permiten definir funciones que trabajan con cualquier tipo en lugar de un tipo específico. Esto proporciona flexibilidad y evita la duplicación de código.

## Sintaxis de una Función Genérica

Para definir una función genérica, se usa un **parámetro de tipo** encerrado entre `<>` después del nombre de la función.

```swift
func swapValues<T>(_ a: inout T, _ b: inout T) {
    let temp = a
    a = b
    b = temp
}
```

### Explicación:
- `<T>` define un **parámetro de tipo genérico**.
- `T` actúa como un marcador de posición para cualquier tipo.
- La función puede intercambiar valores de **cualquier tipo**, sin necesidad de escribir una función separada para cada tipo.

### Uso de la Función Genérica
```swift
var x = 10
var y = 20
swapValues(&x, &y)
print(x, y) // 20, 10

var str1 = "Hola"
var str2 = "Swift"
swapValues(&str1, &str2)
print(str1, str2) // Swift, Hola
```

## Beneficios de las Funciones Genéricas
- **Evitan la repetición de código**, al funcionar con múltiples tipos.
- **Mejoran la flexibilidad y reutilización del código**.
- **Son ampliamente usadas en Swift**, como en `Array`, `Dictionary`, y `Set`.

