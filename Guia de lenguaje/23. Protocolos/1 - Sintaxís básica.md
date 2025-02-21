# Sintaxis de Protocolos en Swift

En Swift, un **protocolo** define un conjunto de propiedades, métodos y otros requisitos que una clase, estructura o enumeración puede adoptar.

## Declaración de un Protocolo

La sintaxis básica para definir un protocolo es:

```swift
protocol SomeProtocol {
    // Requisitos del protocolo
}
```

Un tipo puede adoptar uno o más protocolos especificándolos después de su nombre:

```swift
struct SomeStruct: SomeProtocol {
    // Implementación de los requisitos del protocolo
}
```

### Ejemplo de Protocolo

```swift
protocol FullyNamed {
    var fullName: String { get }
}

struct Person: FullyNamed {
    var fullName: String
}

let person = Person(fullName: "John Doe")
print(person.fullName)
```

### Explicación
- Se define un protocolo `FullyNamed` con una propiedad de solo lectura `fullName`.
- `Person` adopta el protocolo e implementa la propiedad requerida.
- Se crea una instancia de `Person` y se imprime su nombre.

### Salida esperada
```
John Doe
```

## Beneficios del Uso de Protocolos
- **Encapsulan comportamiento común** sin requerir herencia.
- **Permiten una mayor flexibilidad** en la composición de tipos.
- **Facilitan la programación orientada a protocolos** en Swift.

