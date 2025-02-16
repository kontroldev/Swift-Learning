# Propiedades Computadas de Solo Lectura en Swift

En Swift, una *propiedad computada de solo lectura* (`read-only computed property`) es una propiedad computada que solo tiene un `getter` y no permite ser modificada directamente.

## Definición de una Propiedad de Solo Lectura

Si una propiedad computada solo tiene un `getter`, se puede omitir `get` y simplemente devolver el valor:

```swift
struct Circle {
    var radius: Double
    
    var circumference: Double {
        2 * .pi * radius
    }
}
```

En este caso, `circumference` es calculada dinámicamente y no almacena un valor fijo.

## Uso de una Propiedad de Solo Lectura

```swift
let circle = Circle(radius: 5)
print(circle.circumference) // 31.41592653589793
```

Dado que es de solo lectura, intentar asignarle un valor causará un error:

```swift
// circle.circumference = 40 // ❌ Error: Cannot assign to property
```

## Diferencia con una Propiedad Computada con Setter

Si se necesita modificar la propiedad, se debe agregar un `setter`:

```swift
struct Square {
    var side: Double
    
    var area: Double {
        get { side * side }
        set { side = sqrt(newValue) }
    }
}
```

## Cuándo Usar Propiedades de Solo Lectura

- Cuando el valor depende de otros valores y no debe ser modificado directamente.
- Para cálculos que no requieren almacenamiento adicional.

---

Este documento explica cómo usar *propiedades computadas de solo lectura* en Swift para definir valores derivados de forma eficiente.
