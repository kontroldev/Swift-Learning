# Inicializadores por Miembros en Swift

Las estructuras en Swift proporcionan automáticamente un **inicializador por miembros** para simplificar la creación de instancias.

## Uso del Inicializador por Miembros

Cuando defines una estructura, Swift genera un inicializador que permite inicializar todas sus propiedades:

```swift
struct Resolution {
    var width: Int
    var height: Int
}

let hd = Resolution(width: 1920, height: 1080)
print("Resolution: \(hd.width)x\(hd.height)")
```

Este inicializador es útil porque evita la necesidad de definir un `init` manualmente.

## Diferencias con las Clases

Las **clases no reciben un inicializador por miembros automáticamente**. Si una clase no define un `init`, sus propiedades deben tener valores predeterminados:

```swift
class VideoMode {
    var resolution = Resolution(width: 1280, height: 720)
    var frameRate = 30.0
    var name: String?
}

let video = VideoMode()
print("Frame Rate: \(video.frameRate)")
```

Si deseas definir un inicializador en una clase, debes hacerlo manualmente:

```swift
class CustomVideoMode {
    var resolution: Resolution
    var frameRate: Double
    
    init(width: Int, height: Int, frameRate: Double) {
        self.resolution = Resolution(width: width, height: height)
        self.frameRate = frameRate
    }
}

let customVideo = CustomVideoMode(width: 1920, height: 1080, frameRate: 60.0)
print("Resolution: \(customVideo.resolution.width)x\(customVideo.resolution.height), Frame Rate: \(customVideo.frameRate)")
```

## Resumen

| **Característica** | **Estructuras (`struct`)** | **Clases (`class`)** |
|-------------------|-----------------|-----------------|
| Inicializador automático | ✅ Sí | ❌ No |
| Personalización de `init` | Opcional | Requerido si no hay valores predeterminados |

---

Este documento explica cómo las estructuras en Swift generan inicializadores por miembros automáticamente y cómo las clases requieren inicialización manual.
