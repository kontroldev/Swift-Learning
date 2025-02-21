# Requisitos de Propiedades en Protocolos en Swift

En Swift, los protocolos pueden requerir que los tipos conformes proporcionen ciertas propiedades. Estas propiedades pueden ser de instancia o de tipo.

## Declaración de Propiedades en un Protocolo

Los protocolos especifican si una propiedad debe ser de solo lectura (`get`) o de lectura y escritura (`get set`).

```swift
protocol FullyNamed {
    var fullName: String { get }
}
```

Un protocolo con una propiedad de solo lectura (`get`) requiere que cualquier tipo conforme proporcione al menos un getter.

### Propiedades de Solo Lectura

```swift
struct Person: FullyNamed {
    var fullName: String
}

let person = Person(fullName: "John Doe")
print(person.fullName)
```

### Propiedades de Lectura y Escritura

Si una propiedad es de lectura y escritura (`get set`), el tipo conforme debe proporcionar tanto un getter como un setter:

```swift
protocol Nameable {
    var name: String { get set }
}

class Animal: Nameable {
    var name: String
    init(name: String) {
        self.name = name
    }
}

var dog = Animal(name: "Rex")
dog.name = "Buddy"
print(dog.name)
```

### Explicación
- `FullyNamed` requiere una propiedad de solo lectura `fullName`.
- `Nameable` requiere una propiedad de lectura y escritura `name`.
- `Person` implementa `FullyNamed` con una propiedad constante.
- `Animal` implementa `Nameable` con una propiedad variable modificable.

### Salida esperada
```
John Doe
Buddy
```

## Beneficios del Uso de Requisitos de Propiedades en Protocolos
- **Garantiza que los tipos conformes provean ciertas propiedades**.
- **Permite definir interfaces claras y reutilizables**.
- **Facilita la programación orientada a protocolos** en Swift.

