# Instancias de Estructuras y Clases en Swift

En Swift, puedes crear instancias de estructuras y clases utilizando su inicializador predeterminado.

## Creación de Instancias de una Estructura

Las estructuras proporcionan un inicializador de miembro de manera automática:

```swift
struct Resolution {
    var width = 0
    var height = 0
}

let hd = Resolution(width: 1920, height: 1080)
print("Resolution: \(hd.width)x\(hd.height)")
```

Las instancias de estructuras son **tipos de valor**, lo que significa que se copian cuando se asignan a una nueva variable o constante.

## Creación de Instancias de una Clase

Las clases requieren que se cree una instancia explícitamente utilizando `init`:

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

Las instancias de clases son **tipos de referencia**, lo que significa que cuando se asignan a otra variable, ambas apuntan a la misma instancia en memoria.

## Diferencias Clave entre Estructuras y Clases

| **Característica** | **Estructuras** | **Clases** |
|-------------------|---------------|------------|
| Tipo | Valor (se copian) | Referencia (se comparten) |
| Inicializador automático | Sí | No, requiere `init` si tiene propiedades sin valores predeterminados |
| Herencia | No | Sí |

---

Este documento cubre cómo crear instancias de estructuras y clases en Swift, destacando sus diferencias en el manejo de memoria y asignación.
