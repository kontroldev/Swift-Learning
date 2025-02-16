# Sintaxis de Propiedades de Tipo en Swift

Las **propiedades de tipo** en Swift se definen utilizando `static` para estructuras y enumeraciones, y `static` o `class` para clases (si se desea permitir sobrescritura en subclases).

## Definiendo Propiedades de Tipo

### En una Estructura o Enumeración

Las propiedades de tipo en estructuras (`struct`) y enumeraciones (`enum`) se declaran con `static`:

```swift
struct SomeStruct {
    static var storedProperty = "Valor almacenado"
    static var computedProperty: Int {
        return 42
    }
}
```

### En una Clase

Las clases (`class`) pueden definir propiedades de tipo con `static` o `class`:

```swift
class SomeClass {
    static var staticProperty = "No puede ser sobrescrita"
    class var classProperty: String {
        return "Puede ser sobrescrita en subclases"
    }
}
```

## Accediendo a Propiedades de Tipo

Se acceden directamente mediante el nombre del tipo, sin necesidad de instancias:

```swift
print(SomeStruct.storedProperty) // "Valor almacenado"
print(SomeStruct.computedProperty) // 42
print(SomeClass.staticProperty) // "No puede ser sobrescrita"
print(SomeClass.classProperty) // "Puede ser sobrescrita en subclases"
```

## Diferencias entre `static` y `class`

| **Palabra clave** | **Uso en struct/enum** | **Uso en class** | **Permite sobrescritura** |
|------------------|----------------|--------------|---------------------|
| `static` | ✅ | ✅ | ❌ |
| `class` | ❌ | ✅ | ✅ |

---

Este documento explica la **sintaxis de propiedades de tipo** en Swift y la diferencia entre `static` y `class` para su uso en estructuras, clases y enumeraciones.