# Opciones de Subíndices en Swift

Swift permite definir múltiples subíndices en un mismo tipo, diferenciados por los parámetros de entrada.

## Subíndice con Cadenas

Puedes definir subíndices que acepten cadenas como parámetros de acceso.

```swift
struct DictionaryWrapper {
    private var data: [String: String] = [:]
    
    subscript(key: String) -> String? {
        get {
            return data[key]
        }
        set {
            data[key] = newValue
        }
    }
}

var dict = DictionaryWrapper()
dict["name"] = "Swift"
print(dict["name"] ?? "No encontrado") // Swift
```

## Subíndices con Múltiples Parámetros

Puedes definir subíndices con varios parámetros para acceder a estructuras más complejas como matrices bidimensionales.

```swift
struct Grid {
    var grid: [[Int]]
    
    init(rows: Int, columns: Int) {
        grid = Array(repeating: Array(repeating: 0, count: columns), count: rows)
    }
    
    subscript(row: Int, column: Int) -> Int {
        get {
            return grid[row][column]
        }
        set {
            grid[row][column] = newValue
        }
    }
}

var gameBoard = Grid(rows: 5, columns: 5)
gameBoard[2, 3] = 42
print(gameBoard[2, 3]) // 42
```

## Cuándo Usar Subíndices con Opciones Avanzadas

- Para acceder a estructuras de datos personalizadas de manera intuitiva.
- Para representar accesos a colecciones personalizadas.
- Para definir múltiples formas de indexación en una misma estructura.

---

Este documento explica diferentes opciones avanzadas de **subíndices en Swift**, incluyendo subíndices con cadenas y múltiples parámetros.
