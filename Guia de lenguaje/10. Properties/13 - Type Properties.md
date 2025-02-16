# Propiedades de Tipo en Swift

En Swift, las **propiedades de tipo** (`type properties`) pertenecen a la estructura (`struct`), clase (`class`) o enumeración (`enum`) en sí misma, en lugar de a una instancia específica.

## Definiendo Propiedades de Tipo

Las propiedades de tipo se declaran con la palabra clave `static` (para estructuras y enumeraciones) o `class` (para clases que permiten herencia).

```swift
struct SomeStruct {
    static var storedProperty = "Valor almacenado"
    static var computedProperty: Int {
        return 42
    }
}
```

## Accediendo a Propiedades de Tipo

Las propiedades de tipo se acceden mediante el nombre del tipo, no de una instancia:

```swift
print(SomeStruct.storedProperty) // "Valor almacenado"
print(SomeStruct.computedProperty) // 42
```

## Propiedades de Tipo en Clases

Las clases pueden usar `static` (si no hay herencia) o `class` (si se desea sobrescribir en una subclase):

```swift
class SomeClass {
    static var staticProperty = "No puede ser sobrescrita"
    class var classProperty: String {
        return "Puede ser sobrescrita"
    }
}
```

## Uso en Enumeraciones

Las enumeraciones también pueden usar propiedades de tipo:

```swift
enum Configuration {
    static let apiEndpoint = "https://api.example.com"
}
```

## Cuándo Usar Propiedades de Tipo

- Para almacenar valores compartidos entre todas las instancias.
- Para definir constantes globales dentro de un tipo.
- Para proporcionar valores computados sin necesidad de instancias.

---

Este documento explica cómo usar **propiedades de tipo** en Swift para definir valores compartidos en estructuras, clases y enumeraciones.