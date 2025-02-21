# Principio Rector de los Niveles de Acceso en Swift

Swift está diseñado con la premisa de que el **control de acceso** debe proporcionar una estructura clara y segura al código, permitiendo que los módulos interactúen de manera controlada.

## Objetivo del Control de Acceso
- **Restringir la visibilidad de las partes del código** que no deberían ser accesibles fuera de su contexto.
- **Evitar la exposición innecesaria** de detalles de implementación interna.
- **Mantener la modularidad y escalabilidad** en proyectos grandes.

## Principio Clave
Swift sigue el principio de **mínima exposición necesaria**:
- **Las entidades deben ser accesibles solo en la medida en que sea necesario** para la funcionalidad del código.
- **El nivel de acceso predeterminado es `internal`**, lo que permite que el código dentro del mismo módulo acceda a las entidades sin hacerlas visibles fuera de él.
- **Evita la exposición accidental** de detalles de implementación y promueve el encapsulamiento.

## Ejemplo de Aplicación del Principio
Si una función no necesita ser utilizada fuera de su módulo, **debe permanecer `internal` o `private`**:

```swift
struct UserManager {
    private var users: [String] = []
    
    mutating func addUser(_ user: String) {
        users.append(user)
    }
}
```

En este caso:
- `users` es `private` porque **no debería ser modificado directamente desde fuera** de `UserManager`.
- `addUser(_:)` es `internal` por defecto, ya que **solo el módulo donde se define puede acceder a él**.

## Beneficios del Principio de Mínima Exposición
✅ **Encapsulación**: Protege la estructura interna del código.
✅ **Modularidad**: Facilita la organización y mantenibilidad del código.
✅ **Seguridad**: Previene modificaciones accidentales de datos internos.

