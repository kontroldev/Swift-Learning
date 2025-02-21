# Parámetros de Tipo en Swift

Los **parámetros de tipo** permiten que funciones, estructuras, enumeraciones y clases trabajen con cualquier tipo, proporcionando flexibilidad y reutilización del código.

## Definición de Parámetros de Tipo

Se usan **parámetros de tipo** dentro de `<>` después del nombre de la función o tipo.

```swift
func printValue<T>(_ value: T) {
    print("El valor es: \(value)")
}
```

### Explicación:
- `<T>` define un **parámetro de tipo genérico**.
- `T` actúa como marcador de posición para cualquier tipo de datos.
- La función `printValue(_:)` acepta cualquier tipo de valor y lo imprime.

### Uso de la Función con Diferentes Tipos
```swift
printValue(42)         // Salida: El valor es: 42
printValue("Swift")    // Salida: El valor es: Swift
printValue(3.14)       // Salida: El valor es: 3.14
```

## Uso de Parámetros de Tipo en Estructuras

Los parámetros de tipo también se pueden utilizar en **estructuras**.

```swift
struct Box<T> {
    let item: T
}

let intBox = Box(item: 10)
let stringBox = Box(item: "Hola")
```

### Explicación:
- `Box<T>` es una **estructura genérica** que puede contener cualquier tipo de dato.
- Se crean instancias de `Box` con `Int` y `String`.

## Beneficios de los Parámetros de Tipo
- **Mayor flexibilidad**, ya que pueden adaptarse a diferentes tipos.
- **Evitan la duplicación de código**, promoviendo la reutilización.
- **Mejoran la seguridad de tipos**, ya que el compilador garantiza que se usen los tipos adecuados.

