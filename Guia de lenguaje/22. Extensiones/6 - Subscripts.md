# Subíndices en Extensiones en Swift

Las extensiones en Swift permiten agregar **nuevos subíndices** a tipos existentes, lo que facilita la manipulación de datos de manera más intuitiva sin modificar su implementación original.

## Agregando un Subíndice a un Tipo Existente

A continuación, se muestra un ejemplo de cómo agregar un subíndice a `Int` para obtener dígitos individuales.

### Ejemplo: Extender `Int` para acceder a sus dígitos

```swift
extension Int {
    subscript(digitIndex: Int) -> Int {
        let numberString = String(self).reversed()
        guard digitIndex >= 0, digitIndex < numberString.count else { return 0 }
        return Int(String(numberString[numberString.index(numberString.startIndex, offsetBy: digitIndex)])) ?? 0
    }
}

let number = 987654321
print("Dígito en la posición 0: \(number[0])")
print("Dígito en la posición 3: \(number[3])")
```

### Explicación
- Se define un subíndice `subscript(digitIndex: Int) -> Int` que devuelve el dígito en la posición especificada.
- Convierte el número a una cadena invertida para acceder a los dígitos desde la derecha.
- Devuelve el dígito correspondiente o `0` si el índice es inválido.

### Salida esperada
```
Dígito en la posición 0: 1
Dígito en la posición 3: 4
```

## Beneficios de Usar Subíndices en Extensiones
- **Mejora la legibilidad y accesibilidad de los datos**.
- **Encapsula lógica específica dentro del tipo**.
- **Facilita la manipulación de colecciones y tipos personalizados**.

