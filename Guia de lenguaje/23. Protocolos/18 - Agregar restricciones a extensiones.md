# Agregar Restricciones a Extensiones de Protocolos en Swift

Swift permite agregar **restricciones** a las extensiones de protocolos utilizando cláusulas `where`. Esto permite que una extensión solo se aplique a tipos que cumplan ciertos criterios.

## Uso de `where` en Extensiones de Protocolos

Puedes restringir una extensión de protocolo a tipos específicos usando `where`.

### Ejemplo: Extender un Protocolo Solo para Tipos que Conformen a Otro Protocolo

```swift
protocol NumericContainer {
    associatedtype NumberType
    var value: NumberType { get }
}

extension NumericContainer where NumberType: Numeric {
    func squared() -> NumberType {
        return value * value
    }
}

struct IntContainer: NumericContainer {
    let value: Int
}

let container = IntContainer(value: 4)
print(container.squared())
```

### Explicación
- Se define el protocolo `NumericContainer` con un `associatedtype` llamado `NumberType`.
- La extensión **solo se aplica a tipos cuyo `NumberType` conforme a `Numeric`**.
- `IntContainer` conforma a `NumericContainer`, permitiendo el uso de `squared()`.

### Salida esperada
```
16
```

## Beneficios de Agregar Restricciones a Extensiones de Protocolos
- **Mayor flexibilidad**, ya que las extensiones solo afectan a tipos específicos.
- **Mejora la reutilización de código**, sin afectar a tipos que no necesitan la funcionalidad.
- **Facilita el uso de tipos genéricos y protocolos juntos**, promoviendo una programación más modular.

