# Control de Acceso en la Herencia de Protocolos en Swift

En Swift, un **protocolo** puede heredar de uno o más protocolos, y su nivel de acceso debe ser al menos tan restrictivo como el más restrictivo de los protocolos de los que hereda.

## Reglas de Control de Acceso en la Herencia de Protocolos
1. **Un protocolo puede heredar de uno o varios protocolos.**
   - La herencia sigue las mismas reglas que las clases.
2. **El nivel de acceso del protocolo derivado no puede ser más abierto que el de sus protocolos base.**
   - Un protocolo `internal` no puede heredar de un protocolo `private`.

## Ejemplo de Herencia de Protocolos con Control de Acceso
```swift
public protocol BaseProtocol {
    func baseMethod()
}

internal protocol DerivedProtocol: BaseProtocol {
    func derivedMethod()
}
```
### Explicación:
- `BaseProtocol` es `public`, por lo que cualquier protocolo puede heredar de él.
- `DerivedProtocol` es `internal`, lo que significa que solo puede ser utilizado dentro del mismo módulo.

## Herencia Múltiple en Protocolos
Un protocolo puede heredar de múltiples protocolos, siempre respetando los niveles de acceso:
```swift
protocol FirstProtocol {
    func firstMethod()
}

protocol SecondProtocol {
    func secondMethod()
}

public protocol CombinedProtocol: FirstProtocol, SecondProtocol {
    func combinedMethod()
}
```
### Reglas:
✅ `CombinedProtocol` debe cumplir con `FirstProtocol` y `SecondProtocol`.
✅ Si `FirstProtocol` o `SecondProtocol` tuvieran un acceso `internal`, `CombinedProtocol` no podría ser `public`.

## Beneficios del Control de Acceso en la Herencia de Protocolos
✅ **Encapsulación**: Permite restringir el uso de protocolos en diferentes módulos.  
✅ **Flexibilidad**: Permite que los protocolos hereden múltiples comportamientos de manera controlada.  
✅ **Seguridad**: Evita exposiciones accidentales de métodos no deseados.

