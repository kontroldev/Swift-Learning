# Control de Acceso en Tipos Anidados en Swift

Swift permite definir **tipos anidados** dentro de otras estructuras, clases o enumeraciones. El **nivel de acceso de un tipo anidado** está determinado por el tipo contenedor a menos que se especifique explícitamente otro nivel.

## Reglas de Acceso en Tipos Anidados
- Un **tipo anidado** (estructura, clase o enumeración dentro de otro tipo) **hereda** el nivel de acceso de su tipo contenedor si no se especifica un nivel de acceso explícito.
- Se puede asignar un nivel de acceso **más restrictivo** al tipo anidado, pero nunca más amplio que el de su contenedor.

## Ejemplo de Tipo Anidado con Control de Acceso
```swift
public struct OuterStruct {
    private class NestedClass {
        func doSomething() {
            print("Acceso permitido solo dentro de OuterStruct")
        }
    }
}
```

### Explicación:
- `OuterStruct` es `public`, pero su tipo anidado `NestedClass` es `private`, por lo que solo puede usarse dentro de `OuterStruct`.

## Tipos Anidados con Diferentes Niveles de Acceso
También puedes definir tipos anidados con un **nivel de acceso más abierto**, siempre que el tipo contenedor lo permita:

```swift
internal struct Container {
    public enum Level {
        case low, medium, high
    }
}

let level: Container.Level = .high // Permitido porque `Level` es `public`
```

## Beneficios del Control de Acceso en Tipos Anidados
✅ **Encapsulación**: Mantiene la lógica interna protegida.
✅ **Organización**: Permite estructurar mejor el código dentro de un contexto lógico.
✅ **Seguridad**: Evita accesos accidentales a tipos internos.
