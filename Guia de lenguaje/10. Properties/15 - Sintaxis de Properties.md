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

## Consultar y Modificar Propiedades de Tipo

Las propiedades de tipo almacenadas (`static var`) pueden modificarse directamente:

```swift
SomeStruct.storedProperty = "Nuevo valor"
print(SomeStruct.storedProperty) // "Nuevo valor"
```

Para propiedades de solo lectura (`static let` o `class var` sin `set`), solo se pueden consultar:

```swift
print(SomeStruct.computedProperty) // 42
print(SomeClass.classProperty) // "Puede ser sobrescrita en subclases"
```

### Propiedades de Tipo en Clases Mutables

Si se necesita modificar una propiedad de tipo en una clase y permitir herencia, se debe usar `class` con `var`:

```swift
class Counter {
    class var count: Int {
        return 100
    }
}

print(Counter.count) // 100
```

## Diferencias entre `static` y `class`

| **Palabra clave** | **Uso en struct/enum** | **Uso en class** | **Permite sobrescritura** |
|------------------|----------------|--------------|---------------------|
| `static` | ✅ | ✅ | ❌ |
| `class` | ❌ | ✅ | ✅ |

---

Este documento explica la **sintaxis de propiedades de tipo** en Swift, cómo consultarlas y modificarlas, y la diferencia entre `static` y `class` para su uso en estructuras, clases y enumeraciones.
