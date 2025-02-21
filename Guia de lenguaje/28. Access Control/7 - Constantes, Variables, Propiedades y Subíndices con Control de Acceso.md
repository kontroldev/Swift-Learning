# Constantes, Variables, Propiedades y Subíndices con Control de Acceso en Swift

Swift permite aplicar niveles de acceso a **constantes, variables, propiedades y subíndices** para restringir su visibilidad dentro del código.

## Reglas Generales
1. **El nivel de acceso de una constante, variable o propiedad no puede ser más amplio que su tipo.**
   - Si el tipo de una propiedad es `private`, la propiedad también debe ser `private`.
   
2. **Las propiedades computadas pueden tener niveles de acceso diferentes para el `getter` y el `setter`.**
   - El `getter` puede ser público mientras que el `setter` puede ser privado.

## Ejemplo de Control de Acceso en Propiedades
```swift
public struct Example {
    public private(set) var publicReadOnly = "Solo lectura pública"
    internal var internalVar = "Variable interna"
    private var privateVar = "Variable privada"
}
```
### Explicación
- `publicReadOnly` es **pública para lectura**, pero **privada para escritura**.
- `internalVar` es accesible dentro del mismo módulo.
- `privateVar` solo es accesible dentro de `Example`.

## Control de Acceso en Subíndices
Al igual que las propiedades, los subíndices pueden tener diferentes niveles de acceso para el `getter` y el `setter`:
```swift
struct SecureArray {
    private var items = ["A", "B", "C"]

    public subscript(index: Int) -> String {
        get { return items[index] }
        private set { items[index] = newValue }
    }
}
```
### Explicación
- Se **puede acceder públicamente** a los elementos del array.
- **No se puede modificar desde fuera** porque el `setter` es privado.

## Beneficios del Control de Acceso en Propiedades y Subíndices
✅ **Encapsulación**: Protege los datos internos y evita modificaciones no deseadas.  
✅ **Modularidad**: Permite definir accesos diferenciados en `getters` y `setters`.  
✅ **Seguridad**: Evita exponer información sensible en subíndices y variables.  

