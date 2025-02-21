# Proporcionar Implementaciones por Defecto en Protocolos en Swift

Swift permite agregar **implementaciones por defecto** a los métodos de un protocolo utilizando **extensiones de protocolos**. Esto significa que los tipos que conformen al protocolo pueden **heredar la implementación sin necesidad de redefinirla**, aunque también pueden sobrescribirla si es necesario.

## Definir Implementaciones por Defecto

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

## Uso de la Implementación por Defecto

Cuando un tipo conforma al protocolo, automáticamente hereda la implementación definida en la extensión.

```swift
struct Person: Greetable {}

let person = Person()
print(person.greet())
```

### Explicación
- Se define el protocolo `Greetable` con un método `greet()`.
- Se proporciona una **implementación por defecto** en una extensión.
- `Person` conforma el protocolo pero **no necesita implementar `greet()` manualmente**.
- Al llamar `greet()`, se usa la implementación por defecto.

### Salida esperada
```
Hola!
```

## Sobrescribir una Implementación por Defecto

Si un tipo desea **personalizar** el método, puede proporcionar su propia implementación.

```swift
struct FriendlyPerson: Greetable {
    func greet() -> String {
        return "¡Hola, amigo!"
    }
}

let friendlyPerson = FriendlyPerson()
print(friendlyPerson.greet())
```

### Salida esperada
```
¡Hola, amigo!
```

## Beneficios de las Implementaciones por Defecto en Protocolos
- **Reduce la repetición de código**, ya que los tipos pueden heredar la funcionalidad común.
- **Facilita la extensibilidad**, permitiendo agregar comportamientos sin modificar la implementación de los tipos conformes.
- **Proporciona flexibilidad**, ya que los tipos pueden usar la implementación predeterminada o sobrescribirla según sea necesario.

