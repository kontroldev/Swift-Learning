# Comprobación de Tipos en Swift

El operador `is` en Swift permite verificar si una instancia pertenece a una clase o subclase específica dentro de una jerarquía de clases.

## Uso del Operador `is`

El operador `is` devuelve `true` si una instancia es de un tipo específico o una de sus subclases y `false` en caso contrario.

### Ejemplo de Uso

Dada la siguiente jerarquía de clases:

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

Se puede comprobar el tipo de cada instancia dentro de un array de `MediaItem`:

```swift
let library: [MediaItem] = [
    Movie(title: "Inception", director: "Christopher Nolan"),
    Song(title: "Shape of You", artist: "Ed Sheeran"),
    Movie(title: "The Matrix", director: "Lana & Lilly Wachowski"),
    Song(title: "Blinding Lights", artist: "The Weeknd")
]

for item in library {
    if item is Movie {
        print("Este es una película.")
    } else if item is Song {
        print("Este es una canción.")
    }
}
```

### Salida esperada:
```
Este es una película.
Este es una canción.
Este es una película.
Este es una canción.
```

## Beneficios del Operador `is`
- Permite verificar el tipo de un objeto en tiempo de ejecución.
- Útil para estructuras de datos heterogéneas.
- Facilita la identificación y tratamiento de diferentes tipos dentro de una jerarquía de clases.
