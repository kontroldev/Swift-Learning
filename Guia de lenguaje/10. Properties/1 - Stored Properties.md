# Propiedades Almacenadas en Swift

Las *propiedades almacenadas* son constantes o variables que pertenecen a una instancia de una estructura o clase y almacenan un valor específico.

## Definición de Propiedades Almacenadas

Puedes definir propiedades almacenadas dentro de estructuras y clases de la siguiente manera:

```swift
struct FixedLengthRange {
    var start: Int
    let length: Int
}
```

Aquí, `start` es una propiedad variable y `length` es una propiedad constante.

## Mutabilidad de Propiedades en Estructuras

Las estructuras son **tipos de valor**, lo que significa que si una instancia está declarada como `let`, sus propiedades variables no pueden ser modificadas:

```swift
let range = FixedLengthRange(start: 0, length: 10)
// range.start = 5 // ❌ Error: No se puede modificar una propiedad de una estructura constante
```

Para permitir modificaciones, la instancia debe ser declarada como `var`:

```swift
var range = FixedLengthRange(start: 0, length: 10)
range.start = 5
print(range.start) // 5
```

## Propiedades Almacenadas en Clases

Las clases son **tipos de referencia**, lo que significa que una instancia constante de una clase permite modificar sus propiedades variables:

```swift
class ExampleClass {
    var value = 10
}

let instance = ExampleClass()
instance.value = 20 // ✅ Permitido
print(instance.value) // 20
```

## Propiedades de Solo Lectura

Puedes definir una propiedad de solo lectura con `let` o utilizando un getter sin setter:

```swift
struct Point {
    let x: Int
    let y: Int
    
    var description: String {
        return "(\(x), \(y))"
    }
}

let point = Point(x: 3, y: 4)
print(point.description) // "(3, 4)"
```

---

Este documento explica cómo funcionan las *propiedades almacenadas* en Swift, incluyendo su uso en estructuras y clases, y las diferencias en mutabilidad.
