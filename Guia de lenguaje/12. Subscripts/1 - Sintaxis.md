# Sintaxis de Subíndices en Swift

Los **subíndices** (`subscripts`) en Swift permiten acceder a elementos de una colección, lista o secuencia sin necesidad de llamar métodos específicos.

## Definiendo un Subíndice

Puedes definir subíndices en clases, estructuras y enumeraciones usando `subscript`.

```swift
struct TimesTable {
    let multiplier: Int
    
    subscript(index: Int) -> Int {
        return multiplier * index
    }
}

let threeTimesTable = TimesTable(multiplier: 3)
print(threeTimesTable[5]) // 15
```

## Sintaxis de un Subíndice

Un subíndice se define de la siguiente manera:

```swift
subscript(parameters) -> ReturnType {
    get {
        // Código para devolver el valor
    }
    set(newValue) {
        // Código para asignar un nuevo valor
    }
}
```

## Subíndices con `get` y `set`

Si el subíndice permite modificación, se usa `get` y `set`:

```swift
class SquareMatrix {
    var matrix: [[Int]]
    
    init(size: Int) {
        matrix = Array(repeating: Array(repeating: 0, count: size), count: size)
    }
    
    subscript(row: Int, column: Int) -> Int {
        get {
            return matrix[row][column]
        }
        set {
            matrix[row][column] = newValue
        }
    }
}

var square = SquareMatrix(size: 3)
square[1, 1] = 10
print(square[1, 1]) // 10
```

## Cuándo Usar Subíndices

- Para acceder a estructuras de datos personalizadas de manera intuitiva.
- Para representar accesos a colecciones personalizadas.
- Para definir métodos de acceso más claros y concisos.

---

Este documento explica la **sintaxis de subíndices** en Swift y cómo usarlos en estructuras, clases y enumeraciones.