# Control de Acceso en Tipos Personalizados en Swift

En Swift, puedes definir niveles de acceso para **tipos personalizados** como estructuras, clases y enumeraciones para restringir su uso fuera del ámbito en el que fueron declarados.

## Control de Acceso en Clases, Structs y Enums
El nivel de acceso de un tipo afecta la accesibilidad de sus propiedades y métodos:

```swift
public class PublicClass {
    public var publicProperty = 0
    internal var internalProperty = 1
    private var privateProperty = 2
}
```

- `publicProperty` es accesible desde cualquier módulo.
- `internalProperty` solo es accesible dentro del mismo módulo.
- `privateProperty` solo es accesible dentro de la clase.

## Control de Acceso en Enumeraciones
Las enumeraciones pueden tener niveles de acceso, pero todos sus casos **heredan el mismo nivel de acceso**:

```swift
public enum PublicEnum {
    case first, second
}
```

Aquí, `PublicEnum` y sus casos `first` y `second` son **públicos**.

## Control de Acceso en Nested Types
Los tipos anidados (nested types) heredan el nivel de acceso de su tipo contenedor a menos que se especifique otro:

```swift
public struct OuterStruct {
    private class NestedClass {
        func doSomething() {}
    }
}
```

- `NestedClass` es **privada** y no es accesible fuera de `OuterStruct`.

## Beneficios del Control de Acceso en Tipos Personalizados
✅ **Encapsulación**: Protege la estructura interna de los tipos.
✅ **Modularidad**: Permite definir interfaces claras entre módulos.
✅ **Seguridad**: Evita accesos no deseados a elementos internos.

