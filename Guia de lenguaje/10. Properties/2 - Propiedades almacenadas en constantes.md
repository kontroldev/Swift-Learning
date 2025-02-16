# Propiedades Almacenadas en Instancias Constantes de Estructuras en Swift

En Swift, las estructuras son **tipos de valor**, lo que significa que cuando se asigna una instancia de una estructura a una constante (`let`), sus propiedades variables no pueden ser modificadas.

## Ejemplo de Propiedades en una Estructura

```swift
struct FixedLengthRange {
    var start: Int
    let length: Int
}
```

Si creamos una instancia de `FixedLengthRange` utilizando `var`, podemos modificar su propiedad `start`:

```swift
var range = FixedLengthRange(start: 0, length: 10)
range.start = 5
print(range.start) // 5
```

## Restricción en Instancias Constantes

Si declaramos la instancia con `let`, no podemos modificar sus propiedades variables:

```swift
let range = FixedLengthRange(start: 0, length: 10)
// range.start = 5 // ❌ Error: No se puede modificar una propiedad de una estructura constante
```

Esto ocurre porque las estructuras son **tipos de valor**, y al ser declaradas como `let`, su contenido completo se vuelve inmutable.

## Diferencia con Clases

En contraste, las clases son **tipos de referencia**, por lo que una instancia de clase declarada como `let` aún puede modificar sus propiedades variables:

```swift
class ExampleClass {
    var value = 10
}

let instance = ExampleClass()
instance.value = 20 // ✅ Permitido
print(instance.value) // 20
```

En este caso, aunque `instance` es una constante, la referencia sigue siendo mutable.

---

Este documento explica cómo funcionan las *propiedades almacenadas en instancias constantes de estructuras* en Swift, y cómo se diferencian de las clases en cuanto a mutabilidad.
