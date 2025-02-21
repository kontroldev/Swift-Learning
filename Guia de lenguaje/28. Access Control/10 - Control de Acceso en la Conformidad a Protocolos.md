# Control de Acceso en la Conformidad a Protocolos en Swift

Cuando un tipo adopta un protocolo, debe cumplir con sus requisitos de acceso. Swift impone reglas para garantizar que la conformidad a los protocolos sea coherente con los niveles de acceso establecidos.

## Reglas de Control de Acceso en la Conformidad a Protocolos
1. **El nivel de acceso de la conformidad a un protocolo no puede ser más abierto que el protocolo mismo.**
   - Si un protocolo es `internal`, una clase `public` que lo adopte debe declarar su conformidad como `internal` o más restrictiva.
2. **Los miembros de un tipo que cumplen un protocolo deben cumplir los requisitos de acceso del protocolo.**
   - Si un protocolo declara un método `public`, la implementación en el tipo también debe ser `public`.

## Ejemplo de Conformidad a Protocolos con Control de Acceso
```swift
public protocol ExampleProtocol {
    func exampleMethod()
}

public class ExampleClass: ExampleProtocol {
    public func exampleMethod() {
        print("Implementación pública")
    }
}
```
### Explicación:
- `ExampleClass` es `public`, lo que significa que la conformidad a `ExampleProtocol` también debe ser `public`.
- `exampleMethod()` es `public` porque el protocolo lo exige.

## Conformidad a Protocolos con Niveles de Acceso Diferenciados
Si un protocolo tiene acceso `internal`, un tipo `public` que lo adopte **debe declarar su conformidad como `internal` o más restrictiva**:
```swift
internal protocol InternalProtocol {
    func internalMethod()
}

public class PublicClass: InternalProtocol {
    internal func internalMethod() {
        print("Método interno implementado")
    }
}
```
✅ `internalMethod()` es `internal` porque `InternalProtocol` es `internal`.
❌ No se podría hacer `public func internalMethod()`, ya que aumentaría su visibilidad respecto al protocolo.

## Beneficios del Control de Acceso en la Conformidad a Protocolos
✅ **Encapsulación**: Evita exposiciones accidentales de protocolos internos.  
✅ **Seguridad**: Protege la implementación de requisitos dentro del módulo adecuado.  
✅ **Modularidad**: Define correctamente la conformidad sin alterar niveles de acceso de manera indebida.

