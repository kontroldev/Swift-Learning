# Downcasting en Swift

El **downcasting** en Swift permite convertir una instancia a un tipo de su jerarquía de clases de forma explícita. Para ello, se utilizan los operadores `as?` y `as!`.

## Uso del Downcasting

Cuando se trabaja con una jerarquía de clases, puede ser necesario tratar una instancia como un tipo más específico. Esto se logra mediante `as?` (downcasting seguro) o `as!` (downcasting forzado).

### Jerarquía de Clases

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

### Uso de `as?` (Downcasting Seguro)

El operador `as?` devuelve un valor opcional que será `nil` si la conversión no es posible.

```swift
for item in library {
    if let movie = item as? Movie {
        print("Película: \(movie.title), Director: \(movie.director)")
    } else if let song = item as? Song {
        print("Canción: \(song.title), Artista: \(song.artist)")
    }
}
```

### Uso de `as!` (Downcasting Forzado)

El operador `as!` intenta forzar la conversión y puede provocar un error si la conversión no es válida.

```swift
let someMovie = library[0] as! Movie
print("Película forzada: \(someMovie.title), Director: \(someMovie.director)")
```

⚠️ **Precaución:** Se recomienda evitar `as!` a menos que se tenga certeza de que la conversión es válida.

## Beneficios del Downcasting
- Permite acceder a propiedades y métodos específicos de una subclase.
- Facilita el trabajo con colecciones heterogéneas.
- El downcasting seguro (`as?`) evita errores en tiempo de ejecución.

