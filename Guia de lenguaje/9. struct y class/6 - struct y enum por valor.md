# Las Estructuras y Enumeraciones Son Tipos de Valor en Swift

En Swift, **las estructuras (`struct`) y enumeraciones (`enum`) son tipos de valor**, lo que significa que cuando se asignan a una variable o se pasan a una función, se copian en lugar de compartirse por referencia.

## Ejemplo con Estructuras

Cuando se asigna una estructura a una nueva variable, se crea una copia independiente:

```swift
struct Resolution {
    var width = 0
    var height = 0
}

var hd = Resolution(width: 1920, height: 1080)
var newHd = hd // Se copia el valor
newHd.width = 1280

print(hd.width)    // 1920 (original no cambia)
print(newHd.width) // 1280 (copia modificada)
```

## Ejemplo con Enumeraciones

Las enumeraciones también se copian cuando se asignan:

```swift
enum CompassPoint {
    case north, south, east, west
}

var direction = CompassPoint.north
var newDirection = direction
newDirection = .south

print(direction)    // north (valor original)
print(newDirection) // south (copia modificada)
```

## Diferencia con las Clases

Las clases (`class`) son **tipos de referencia**, lo que significa que cuando se asigna una instancia de una clase, ambas variables apuntan a la misma referencia en memoria.

```swift
class VideoMode {
    var resolution = Resolution()
    var frameRate = 30.0
}

let video = VideoMode()
let anotherVideo = video // Comparte la misma referencia
anotherVideo.frameRate = 60.0

print(video.frameRate) // 60.0 (cambia en ambas referencias)
```

## Cuándo Usar Tipos de Valor

| **Situación** | **Usar una Estructura o Enumeración** |
|--------------|---------------------------------|
| Datos inmutables o pequeños | ✅ |
| Necesidad de copias independientes | ✅ |
| Modelado de datos simples | ✅ |
| Datos compartidos entre instancias | ❌ (Usar una `class`) |

---

Este documento explica cómo las estructuras y enumeraciones en Swift son *tipos de valor*, garantizando copias independientes en asignaciones y pasos de funciones.
