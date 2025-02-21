# Operadores Prefijo y Posfijo en Swift

Swift permite definir **operadores prefijo y posfijo** en clases y estructuras mediante el uso de las palabras clave `prefix` y `postfix`.

## Definiendo Operadores Prefijo y Posfijo
- **Operadores prefijo**: Se colocan antes del operando (`-a`, `!b`).
- **Operadores posfijo**: Se colocan después del operando (`c!`).

### Ejemplo de Operador Prefijo
```swift
struct Vector2D {
    var x: Double
    var y: Double
    
    static prefix func - (vector: Vector2D) -> Vector2D {
        return Vector2D(x: -vector.x, y: -vector.y)
    }
}

let vector = Vector2D(x: 3.0, y: 4.0)
let negatedVector = -vector  // Vector2D(x: -3.0, y: -4.0)
```

### Ejemplo de Operador Posfijo
```swift
postfix operator ++

struct Counter {
    var value: Int
    
    static postfix func ++ (counter: inout Counter) -> Counter {
        let previous = counter
        counter.value += 1
        return previous
    }
}

var count = Counter(value: 10)
let previousCount = count++  // previousCount = 10, count.value = 11
```

## Beneficios de los Operadores Prefijo y Posfijo
✅ **Permiten expresiones matemáticas más intuitivas.**  
✅ **Mejoran la legibilidad y el diseño del código.**  
✅ **Facilitan la personalización de operaciones en tipos personalizados.**

