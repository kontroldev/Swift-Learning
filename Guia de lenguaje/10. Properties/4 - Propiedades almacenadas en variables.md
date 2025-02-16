# Propiedades Almacenadas y Variables de Instancia en Swift

En Swift, **las propiedades almacenadas (`stored properties`)** son aquellas que pertenecen a una instancia de una clase o estructura y almacenan un valor específico. A diferencia de otros lenguajes, Swift no utiliza variables de instancia separadas.

## Propiedades Almacenadas en Swift

Las propiedades almacenadas pueden ser variables (`var`) o constantes (`let`):

```swift
struct FixedLengthRange {
    var start: Int
    let length: Int
}
```

En este caso, `start` es una propiedad mutable, mientras que `length` es constante.

## Diferencia con Otros Lenguajes

En lenguajes como Objective-C, una propiedad es generalmente una combinación de:
- Una variable de instancia privada (`_variable`)
- Métodos `getter` y `setter` públicos

En Swift, esta separación no es necesaria, ya que las propiedades almacenadas manejan directamente sus valores sin variables de instancia ocultas.

## Accediendo a Propiedades en Swift

```swift
class Example {
    var value: Int = 10
}

let instance = Example()
print(instance.value) // 10
instance.value = 20
print(instance.value) // 20
```

## Mutabilidad en Estructuras vs. Clases

Las **estructuras (`struct`) son tipos de valor**, lo que significa que deben declararse como `var` para permitir cambios en sus propiedades mutables:

```swift
var range = FixedLengthRange(start: 0, length: 10)
range.start = 5 // ✅ Permitido
```

Sin embargo, si la instancia es constante (`let`), ninguna propiedad variable puede cambiar:

```swift
let range = FixedLengthRange(start: 0, length: 10)
// range.start = 5 // ❌ Error: No se puede modificar una estructura constante
```

Las **clases (`class`) son tipos de referencia**, por lo que pueden modificar sus propiedades aunque la instancia sea constante:

```swift
class ExampleClass {
    var value = 10
}

let instance = ExampleClass()
instance.value = 20 // ✅ Permitido
```

---

Este documento explica cómo funcionan las *propiedades almacenadas* en Swift y cómo se diferencian de las variables de instancia en otros lenguajes de programación.