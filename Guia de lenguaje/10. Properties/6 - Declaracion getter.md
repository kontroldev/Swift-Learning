# Declaración Simplificada de Getter en Swift

En Swift, cuando una propiedad computada solo tiene un `getter`, se puede omitir la palabra clave `get` y simplemente devolver el valor.

## Sintaxis de Getter Simplificado

```swift
struct Rectangle {
    var width: Double
    var height: Double
    
    var area: Double {
        width * height
    }
}
```

En este ejemplo, la propiedad `area` calcula su valor sin necesidad de un `get {}` explícito.

## Ejemplo de Uso

```swift
let rect = Rectangle(width: 5, height: 10)
print(rect.area) // 50.0
```

## Ventajas del Getter Simplificado

- Reduce la cantidad de código innecesario.
- Hace que el código sea más legible y limpio.
- Se usa cuando la propiedad solo devuelve un valor sin lógica adicional.

## Comparación con la Versión Completa

```swift
struct Rectangle {
    var width: Double
    var height: Double
    
    var area: Double {
        get {
            return width * height
        }
    }
}
```

Ambas versiones producen el mismo resultado, pero la primera es más concisa.

---

Este documento explica cómo usar la *declaración simplificada de getter* en Swift para hacer que las propiedades computadas sean más legibles y eficientes.
