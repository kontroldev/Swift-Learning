# Niveles de Acceso en Swift

Swift proporciona **control de acceso** para restringir el acceso a partes del código y mejorar la encapsulación y seguridad. Existen cinco niveles de acceso:

## 1. `open` (Abierto)
- Disponible solo en clases y miembros de clases.
- Permite **subclasificación y sobreescritura** en cualquier módulo.

```swift
open class OpenClass {
    open func method() {}
}
```

## 2. `public` (Público)
- Se puede acceder desde **cualquier módulo**, pero no permite subclasificación o sobreescritura fuera del módulo.

```swift
public class PublicClass {
    public var value = 0
}
```

## 3. `internal` (Interno) *(Valor por defecto)*
- Accesible solo dentro del mismo módulo.

```swift
class InternalClass {
    internal var internalValue = 10
}
```

## 4. `fileprivate` (Privado a nivel de archivo)
- Solo accesible dentro del **mismo archivo fuente**.

```swift
fileprivate class FilePrivateClass {
    fileprivate func doSomething() {}
}
```

## 5. `private` (Privado)
- Solo accesible dentro de la **misma declaración** (clase, struct o extensión).

```swift
class PrivateExample {
    private var secret = "No disponible"
}
```

## Comparación de Niveles de Acceso
| Nivel | Accesible dentro del módulo | Accesible fuera del módulo | Subclasificable fuera del módulo |
|-------|-----------------------------|-----------------------------|---------------------------------|
| `open` | ✅ | ✅ | ✅ |
| `public` | ✅ | ✅ | ❌ |
| `internal` | ✅ | ❌ | ❌ |
| `fileprivate` | Solo en el archivo | ❌ | ❌ |
| `private` | Solo en la declaración | ❌ | ❌ |

## Beneficios del Control de Acceso en Swift
- **Encapsulación**: Protege la implementación interna.
- **Modularidad**: Facilita la organización del código.
- **Seguridad**: Evita modificaciones accidentales o uso indebido.


