# Requisitos Opcionales en Protocolos en Swift

Swift permite definir **métodos y propiedades opcionales en protocolos**, pero solo cuando el protocolo está **marcado con @objc**. Esto es útil cuando se trabaja con **Objective-C y delegación**, aunque los protocolos opcionales no son compatibles con estructuras (`struct`) o enumeraciones (`enum`).

## Definir Métodos Opcionales en un Protocolo

Para hacer un método opcional, se usa `@objc` y `optional`:

```swift
import Foundation

@objc protocol OptionalProtocol {
    @objc optional func optionalMethod()
}
```

### Explicación
- `@objc` indica que el protocolo es compatible con Objective-C.
- `optional` permite que los métodos no sean obligatorios.

## Implementación de un Protocolo con Métodos Opcionales

Cuando un tipo adopta un protocolo con requisitos opcionales, la implementación de estos métodos es opcional.

```swift
class SomeClass: OptionalProtocol {
    func optionalMethod() {
        print("Este método es opcional y ha sido implementado.")
    }
}

let instance = SomeClass()
instance.optionalMethod()
```

### Uso con `responds(to:)`

Dado que los métodos opcionales pueden no estar implementados, se debe verificar su existencia antes de llamarlos.

```swift
let optionalInstance: OptionalProtocol = SomeClass()
if let method = optionalInstance.optionalMethod {
    method()
} else {
    print("El método no está implementado.")
}
```

### Beneficios de los Métodos Opcionales en Protocolos
- **Útiles para delegación en UIKit y AppKit**, donde ciertos métodos pueden ser opcionales.
- **Permiten mayor flexibilidad en la adopción de protocolos**.
- **Facilitan la compatibilidad con Objective-C**, ya que Swift puro no admite métodos opcionales en protocolos.

🚨 **Nota:** Los protocolos opcionales **solo funcionan en clases** debido a la restricción de `@objc`.

