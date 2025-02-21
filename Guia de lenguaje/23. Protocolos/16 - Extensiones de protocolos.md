# Extensiones de Protocolos en Swift

Swift permite agregar **implementaciones por defecto** a los protocolos mediante **extensiones de protocolos**. Esto permite que cualquier tipo que conforme al protocolo herede la implementación sin necesidad de repetir código.

## Definir una Extensión de Protocolo

Las extensiones de protocolo se definen de la misma manera que las extensiones normales:

```swift
protocol Greetable {
    func greet() -> String
}

extension Greetable {
    func greet() -> String {
        return "Hola!"
    }
}
```

## Uso de una Extensión de Protocolo

Cuando un tipo conforma al protocolo, automáticamente hereda la implementación de la extensión.

```swift
struct Person: Greetable {}

let person = Person()
print(person.greet())
```

### Explicación
- Se define el protocolo `Greetable` con un método `greet()`.
- Se proporciona una implementación por defecto en una **extensión del protocolo**.
- `Person` conforma al protocolo pero **no necesita implementar `greet()` manualmente**.
- Al llamar `greet()`, se usa la implementación por defecto.

### Salida esperada
```
Hola!
```

## Beneficios de las Extensiones de Protocolos
- **Evitan código repetitivo** al proporcionar implementaciones compartidas.
- **Permiten agregar nuevas funcionalidades** a múltiples tipos sin modificar su definición.
- **Facilitan la programación orientada a protocolos**, promoviendo un diseño modular.

