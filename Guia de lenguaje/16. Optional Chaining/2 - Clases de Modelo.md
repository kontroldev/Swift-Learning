# Definiendo Clases de Modelo para Encadenamiento Opcional en Swift

Para demostrar el **encadenamiento opcional** en Swift, se pueden definir clases de modelo que reflejen una estructura de objetos anidados, donde algunas propiedades pueden ser opcionales (`nil`).

## Definición de Clases de Modelo

```swift
class Person {
    var residence: Residence?
}

class Residence {
    var address: Address?
}

class Address {
    var street: String?
}
```

En este ejemplo:
- `Person` tiene una propiedad opcional `residence`.
- `Residence` tiene una propiedad opcional `address`.
- `Address` tiene una propiedad opcional `street`.

## Uso del Encadenamiento Opcional

Podemos acceder de manera segura a la propiedad `street` de una instancia de `Person` sin causar un error si alguno de los valores es `nil`.

```swift
let person = Person()
if let streetName = person.residence?.address?.street {
    print("La calle es \(streetName)")
} else {
    print("No hay dirección disponible")
}
```

## Explicación del Código

- Si `residence` es `nil`, toda la expresión `person.residence?.address?.street` devolverá `nil` sin causar un *crash*.
- Se evita el desempaquetado forzado, lo que hace que el código sea más seguro.

### Cuándo Usar Clases de Modelo con Encadenamiento Opcional

- Cuando se trabaja con estructuras de datos anidadas donde algunos valores pueden ser `nil`.
- Para evitar múltiples verificaciones `if let` anidadas y mejorar la legibilidad.
- Para hacer que el acceso a propiedades opcionales sea más seguro y limpio.

---

Este documento explica cómo definir **clases de modelo para encadenamiento opcional en Swift** y cómo usarlas de manera segura.
