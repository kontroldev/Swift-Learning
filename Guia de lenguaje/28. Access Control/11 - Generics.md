# Control de Acceso en Genéricos en Swift

Swift permite aplicar **niveles de acceso a las funciones, estructuras y clases genéricas**, asegurando que su uso se restrinja de acuerdo con los niveles de acceso de sus parámetros de tipo.

## Reglas de Control de Acceso en Genéricos
1. **El nivel de acceso de una función, estructura o clase genérica no puede ser más amplio que su tipo genérico.**
   - Si un tipo genérico tiene acceso `internal`, la función o clase que lo use no puede ser `public`.

2. **Las restricciones de tipo en los parámetros genéricos no pueden exponer tipos con un acceso más restrictivo.**
   - Un tipo `public` no puede usar un tipo `internal` en su declaración de restricciones.

## Ejemplo de Genéricos con Control de Acceso
```swift
public struct PublicContainer<T> {
    private var item: T
    
    public init(item: T) {
        self.item = item
    }
}
```
### Explicación:
- `PublicContainer<T>` es `public`, pero la propiedad `item` es `private`.
- Esto permite encapsular el acceso a `item`, protegiendo su modificación.

## Restricciones de Tipo en Genéricos
Las restricciones de tipo en genéricos deben cumplir con las reglas de acceso:
```swift
internal protocol InternalProtocol {}

public struct PublicStruct<T: InternalProtocol> { // Error: InternalProtocol es internal
    var value: T
}
```
✅ **Corrección:** `PublicStruct` debería ser `internal` o más restrictivo.

## Beneficios del Control de Acceso en Genéricos
✅ **Seguridad**: Protege la implementación de tipos genéricos en módulos restringidos.  
✅ **Encapsulación**: Permite diseñar estructuras de datos flexibles sin exponer detalles internos.  
✅ **Modularidad**: Garantiza la compatibilidad de acceso entre tipos y funciones genéricas.

