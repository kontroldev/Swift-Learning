# Propiedades Computadas en Swift

Las *propiedades computadas* (`computed properties`) no almacenan un valor fijo, sino que calculan su valor cada vez que se acceden. Se pueden definir en estructuras, clases y enumeraciones.

## Definición de una Propiedad Computada

Una propiedad computada se define con un `getter` (obligatorio) y opcionalmente un `setter`:

```swift
struct Rectangle {
    var width: Double
    var height: Double
    
    var area: Double {
        return width * height
    }
}

let rect = Rectangle(width: 5, height: 10)
print(rect.area) // 50.0
```

Aquí, `area` se calcula dinámicamente y no almacena un valor fijo.

## Propiedades Computadas con Getter y Setter

Si una propiedad computada debe ser modificable, se puede agregar un `setter`:

```swift
struct Square {
    var side: Double
    
    var area: Double {
        get {
            return side * side
        }
        set {
            side = sqrt(newValue)
        }
    }
}

var square = Square(side: 4)
print(square.area) // 16.0
square.area = 25
print(square.side) // 5.0
```

### Explicación:
- `get` devuelve el área calculada.
- `set` permite asignar un nuevo valor a `area` y ajusta `side` en consecuencia.

## Propiedades de Solo Lectura

Si una propiedad computada solo tiene un `getter`, el `get` se puede omitir:

```swift
struct Circle {
    var radius: Double
    
    var circumference: Double {
        return 2 * .pi * radius
    }
}
```

## Diferencias entre Propiedades Computadas y Almacenadas

| **Característica** | **Propiedades Computadas** | **Propiedades Almacenadas** |
|-------------------|------------------------|----------------------|
| Almacenan un valor fijo | ❌ No | ✅ Sí |
| Se recalculan en cada acceso | ✅ Sí | ❌ No |
| Pueden tener `get` y `set` | ✅ Sí | ❌ No |

---

Este documento explica cómo usar *propiedades computadas* en Swift para calcular valores dinámicos sin necesidad de almacenarlos explícitamente.
