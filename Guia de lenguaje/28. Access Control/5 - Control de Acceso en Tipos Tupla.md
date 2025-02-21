# Control de Acceso en Tipos Tupla en Swift

Las **tuplas** en Swift no tienen un nivel de acceso específico, ya que su acceso se determina por los tipos que la componen. Esto significa que el nivel de acceso más restrictivo dentro de una tupla **dicta el nivel de acceso de la tupla en su totalidad**.

## Restricciones de Acceso en Tuplas
El acceso a una tupla está restringido por el **tipo de acceso más restrictivo** de sus elementos:

```swift
internal struct InternalStruct {}
private struct PrivateStruct {}

let tuple1: (InternalStruct, String) = (InternalStruct(), "Swift") // OK
let tuple2: (PrivateStruct, String) = (PrivateStruct(), "Swift") // ERROR: `PrivateStruct` es privado
```

### Explicación:
- `tuple1` es válida porque **ambos elementos** (`InternalStruct` y `String`) tienen al menos acceso `internal`.
- `tuple2` genera un error porque **`PrivateStruct` es privado**, lo que impide su uso fuera de su ámbito.

## Consideraciones para Tuplas
✅ **Las tuplas no pueden tener un nivel de acceso explícito** como `public` o `private`.
✅ **El acceso a una tupla es el más restrictivo entre sus elementos**.
✅ **Si un elemento de la tupla es `private`, la tupla completa será `private`**.

