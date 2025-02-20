# Definir una Jerarquía de Clases para Type Casting en Swift

El **type casting** en Swift permite comprobar y tratar el tipo de una instancia dentro de una jerarquía de clases. Para demostrar su uso, se puede definir una jerarquía de clases que servirá como ejemplo.

## Definiendo una Jerarquía de Clases

En este ejemplo, se crea una jerarquía de clases que representa distintos tipos de medios en una biblioteca.

```swift
class MediaItem {
    var title: String
    
    init(title: String) {
        self.title = title
    }
}

class Movie: MediaItem {
    var director: String
    
    init(title: String, director: String) {
        self.director = director
        super.init(title: title)
    }
}

class Song: MediaItem {
    var artist: String
    
    init(title: String, artist: String) {
        self.artist = artist
        super.init(title: title)
    }
}
```

En esta jerarquía:
- `MediaItem` es la clase base para todos los tipos de medios.
- `Movie` y `Song` heredan de `MediaItem`, agregando propiedades específicas.

## Creando Instancias

A continuación, se crean instancias de `Movie` y `Song`, almacenándolas en un array de tipo `MediaItem`.

```swift
let library: [MediaItem] = [
    Movie(title: "Inception", director: "Christopher Nolan"),
    Song(title: "Shape of You", artist: "Ed Sheeran"),
    Movie(title: "The Matrix", director: "Lana & Lilly Wachowski"),
    Song(title: "Blinding Lights", artist: "The Weeknd")
]
```

Esta estructura permite almacenar diferentes tipos de objetos bajo una misma referencia base (`MediaItem`).

## Beneficios de una Jerarquía de Clases en Type Casting
- **Facilita la organización del código** al agrupar elementos similares.
- **Permite el uso de type casting (`is` y `as`)** para verificar y convertir instancias en tiempo de ejecución.
- **Proporciona flexibilidad** al trabajar con colecciones heterogéneas de objetos relacionados.

