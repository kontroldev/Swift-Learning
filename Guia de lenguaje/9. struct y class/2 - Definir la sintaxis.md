# Sintaxis de Definición de Estructuras y Clases en Swift

Swift permite definir modelos de datos utilizando *estructuras* (`struct`) y *clases* (`class`). Ambos pueden contener propiedades y métodos, pero tienen diferencias clave en su comportamiento.

## Definiendo una Estructura

Las estructuras se definen con la palabra clave `struct`:

```swift
struct Resolution {
    var width = 0
    var height = 0
}
```

Para crear una instancia de una estructura:

```swift
let hd = Resolution(width: 1920, height: 1080)
print("Width: \(hd.width), Height: \(hd.height)")
```

## Definiendo una Clase

Las clases se definen con la palabra clave `class`:

```swift
class VideoMode {
    var resolution = Resolution()
    var frameRate = 0.0
    var name: String?
}
```

Para crear una instancia de una clase:

```swift
let video = VideoMode()
video.frameRate = 30.0
video.name = "1080p"
print("Video Mode: \(video.name ?? "Unknown"), Frame Rate: \(video.frameRate)")
```

## Diferencias Clave

- **Las estructuras son tipos de valor**, lo que significa que se copian cuando se asignan o pasan a funciones.
- **Las clases son tipos de referencia**, lo que significa que múltiples variables pueden compartir la misma instancia.

---

Este documento cubre la sintaxis básica para definir estructuras y clases en Swift, destacando sus similitudes y diferencias clave.
