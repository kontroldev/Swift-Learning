# Las Clases Son Tipos de Referencia en Swift

En Swift, **las clases (`class`) son tipos de referencia**, lo que significa que cuando se asigna una instancia de una clase a una nueva variable, ambas referencias apuntan al mismo objeto en memoria en lugar de hacer una copia.

## Ejemplo de Comportamiento de Referencia

```swift
class VideoMode {
    var resolution = Resolution(width: 1920, height: 1080)
    var frameRate = 30.0
}

let originalVideo = VideoMode()
let copiedVideo = originalVideo // Ambas referencias apuntan al mismo objeto

copiedVideo.frameRate = 60.0
print(originalVideo.frameRate) // 60.0 (se modifica en ambas referencias)
```

En este ejemplo, al modificar `copiedVideo.frameRate`, también cambia el valor en `originalVideo`, ya que ambas variables apuntan a la misma instancia.

## Comparación con Tipos de Valor

Las estructuras y enumeraciones en Swift son **tipos de valor**, lo que significa que se copian al asignarlas a una nueva variable:

```swift
struct Resolution {
    var width = 0
    var height = 0
}

var hd = Resolution(width: 1920, height: 1080)
var newHd = hd // Se crea una copia independiente
newHd.width = 1280

print(hd.width)    // 1920 (el original no cambia)
print(newHd.width) // 1280 (la copia fue modificada)
```

## Identidad de Referencia

Dado que las clases son tipos de referencia, es posible comprobar si dos variables apuntan al mismo objeto en memoria usando `===`:

```swift
if originalVideo === copiedVideo {
    print("Ambas referencias apuntan a la misma instancia.")
}
```

## Cuándo Usar Clases en Lugar de Estructuras

| **Situación** | **Usar una Clase (`class`)** |
|--------------|-------------------------|
| Se necesita compartir datos entre instancias | ✅ |
| Se requiere herencia | ✅ |
| Se necesita referencia única a la instancia | ✅ |
| Se requiere un `deinit` para liberar memoria | ✅ |

---

Este documento explica cómo las clases en Swift son *tipos de referencia*, permitiendo compartir datos entre múltiples referencias en lugar de copiar valores.
