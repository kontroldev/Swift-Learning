# Sintaxis del Control de Acceso en Swift

Swift utiliza palabras clave específicas para **definir el nivel de acceso** de una entidad dentro del código. Esto permite **controlar la visibilidad** de clases, estructuras, enumeraciones, propiedades y métodos.

## Sintaxis de Control de Acceso
Swift proporciona cinco niveles de acceso:

```swift
open class OpenClass {}       // Accesible y subclasificable desde cualquier módulo
public class PublicClass {}   // Accesible desde cualquier módulo, pero no subclasificable
internal class InternalClass {} // Accesible solo dentro del mismo módulo (por defecto)
fileprivate class FilePrivateClass {} // Accesible solo dentro del archivo fuente
private class PrivateClass {} // Accesible solo dentro del ámbito de declaración
```

### Aplicación en Propiedades y Métodos
Puedes aplicar modificadores de acceso a propiedades y métodos dentro de clases y estructuras:

```swift
class Example {
    private var privateVar = 42
    internal func doSomething() {}
    public func accessibleEverywhere() {}
}
```

- `privateVar` solo es accesible dentro de `Example`.
- `doSomething()` es accesible dentro del mismo módulo.
- `accessibleEverywhere()` es accesible desde cualquier módulo.

## Control de Acceso en Extensiones
Las extensiones pueden tener diferentes niveles de acceso según la visibilidad de la entidad que amplían:

```swift
public struct PublicStruct {
    var internalVar = 10 // Internal por defecto
}

extension PublicStruct {
    public func publicMethod() {}
    private func privateMethod() {}
}
```

- `publicMethod()` es accesible fuera del módulo.
- `privateMethod()` solo es accesible dentro de la extensión.

## Beneficios del Control de Acceso
✅ **Encapsulación**: Protege los detalles internos del código.
✅ **Modularidad**: Permite definir interfaces claras entre módulos.
✅ **Seguridad**: Evita accesos no deseados a estructuras internas.

