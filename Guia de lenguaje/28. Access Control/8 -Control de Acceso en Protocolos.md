# Control de Acceso en Protocolos en Swift

Los protocolos en Swift pueden tener **diferentes niveles de acceso**, lo que define quién puede adoptarlos y utilizarlos en el código.

## Reglas Generales para el Control de Acceso en Protocolos
1. **El nivel de acceso de un protocolo debe ser al menos tan restrictivo como sus requisitos.**
   - Si un protocolo declara un método `public`, entonces el protocolo también debe ser `public` o superior.

2. **Los tipos que adopten un protocolo deben cumplir con sus requisitos de acceso.**
   - Un tipo `internal` no puede adoptar un protocolo `public` sin marcar su implementación como `public`.

## Ejemplo de Protocolos con Control de Acceso
```swift
public protocol PublicProtocol {
    func publicMethod()
}

internal protocol InternalProtocol {
    func internalMethod()
}

private protocol PrivateProtocol {
    func privateMethod()
}
```
### Explicación:
- `PublicProtocol` puede ser adoptado en cualquier módulo.
- `InternalProtocol` solo puede ser adoptado dentro del mismo módulo.
- `PrivateProtocol` solo puede ser adoptado dentro del archivo donde está definido.

## Control de Acceso en la Conformidad a Protocolos
Cuando una clase, estructura o enumeración adopta un protocolo, el nivel de acceso de su implementación **no puede ser más abierto que el del protocolo**.

```swift
protocol ExampleProtocol {
    func exampleMethod()
}

public class ExampleClass: ExampleProtocol {
    public func exampleMethod() {
        print("Implementación pública")
    }
}
```
### Reglas:
✅ `ExampleClass` debe declarar `exampleMethod()` como `public` para coincidir con el acceso del protocolo.
❌ No puede declarar `exampleMethod()` como `private` o `internal`, ya que haría que la conformidad sea inaccesible.

## Beneficios del Control de Acceso en Protocolos
✅ **Encapsulación**: Restringe la adopción de protocolos a ciertos contextos.
✅ **Modularidad**: Define interfaces claras entre módulos.
✅ **Seguridad**: Evita implementaciones no deseadas en tipos restringidos.

