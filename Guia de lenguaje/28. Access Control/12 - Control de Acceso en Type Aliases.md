# Control de Acceso en Type Aliases en Swift

Swift permite definir **type aliases** (alias de tipo) con diferentes niveles de acceso, los cuales deben respetar el nivel de acceso del tipo subyacente.

## Reglas de Control de Acceso en Type Aliases
1. **El nivel de acceso de un type alias no puede ser más abierto que el tipo original.**
   - Si un alias hace referencia a un tipo `internal`, el alias no puede ser `public`.
   
2. **Los type aliases pueden ser utilizados para definir alias de tipos con acceso restringido.**
   - Un alias `private` puede encapsular un tipo `internal` en el mismo archivo.

## Ejemplo de Type Aliases con Control de Acceso
```swift
internal struct InternalStruct {
    var value: Int
}

public typealias PublicAlias = InternalStruct // Error: No puede ser más público que el tipo original

internal typealias InternalAlias = InternalStruct // Correcto
```
### Explicación:
- `PublicAlias` genera un error porque `InternalStruct` es `internal`.
- `InternalAlias` es válido porque mantiene el nivel `internal`.

## Uso de Type Aliases con Protocolos
```swift
protocol ExampleProtocol {}

public typealias PublicProtocolAlias = ExampleProtocol // Correcto
```
✅ Los alias pueden aplicarse a protocolos, respetando su nivel de acceso.

## Beneficios del Control de Acceso en Type Aliases
✅ **Encapsulación**: Protege la visibilidad de tipos internos mediante alias.  
✅ **Organización**: Permite simplificar y estructurar mejor el código.  
✅ **Modularidad**: Garantiza la consistencia en el uso de tipos y sus alias en diferentes módulos.

