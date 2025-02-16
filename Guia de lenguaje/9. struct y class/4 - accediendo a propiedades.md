# Accediendo a Propiedades en Swift

En Swift, las propiedades de estructuras y clases se acceden utilizando la notación de punto (`.`).

## Acceder a Propiedades de una Estructura

Puedes acceder y modificar propiedades de una estructura utilizando una instancia:

```swift
struct Resolution {
    var width = 0
    var height = 0
}

var hd = Resolution(width: 1920, height: 1080)
print("Resolution: \(hd.width)x\(hd.height)")
```

Dado que las estructuras son **tipos de valor**, cualquier modificación en una instancia requiere que la variable sea mutable (`var`).

```swift
hd.width = 1280
print("New Width: \(hd.width)")
```

## Acceder a Propiedades de una Clase

Las clases también permiten acceder a propiedades utilizando la notación de punto:

```swift
class VideoMode {
    var resolution = Resolution()
    var frameRate = 0.0
    var name: String?
}

let video = VideoMode()
video.frameRate = 30.0
video.name = "1080p"
print("Video Mode: \(video.name ?? "Unknown"), Frame Rate: \(video.frameRate)")
```

A diferencia de las estructuras, las instancias de clases son **tipos de referencia**, por lo que pueden modificarse sin necesidad de declararlas como `var`.

## Diferencias Clave entre Estructuras y Clases en Acceso a Propiedades

| **Característica** | **Estructuras** | **Clases** |
|-------------------|---------------|------------|
| Tipo | Valor (se copian) | Referencia (se comparten) |
| Modificación | Requiere `var` en la instancia | No requiere `var` |

---

Este documento cubre cómo acceder y modificar propiedades en estructuras y clases en Swift, destacando sus diferencias en mutabilidad y tipo de referencia.
