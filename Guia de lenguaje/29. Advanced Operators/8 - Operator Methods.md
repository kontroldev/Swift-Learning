# Métodos de Operadores en Swift

En Swift, las clases y estructuras pueden proporcionar **implementaciones personalizadas de operadores** definiéndolos como métodos estáticos dentro de la propia estructura o clase.

## Definición de Métodos de Operadores
Para sobrecargar un operador en una estructura o clase, se define como un método `static`.

### Ejemplo de Implementación de un Operador Personalizado
```swift
struct Vector2D {
    var x: Double
    var y: Double
    
    static func + (left: Vector2D, right: Vector2D) -> Vector2D {
        return Vector2D(x: left.x + right.x, y: left.y + right.y)
    }
}

let vector1 = Vector2D(x: 3.0, y: 4.0)
let vector2 = Vector2D(x: 1.0, y: 2.0)
let result = vector1 + vector2  // Resultado: Vector2D(x: 4.0, y: 6.0)
```

### Explicación:
- Se define `+` como un **método estático** dentro de `Vector2D`.
- `left.x + right.x` y `left.y + right.y` suman las coordenadas de ambos vectores.

## Beneficios de Definir Métodos de Operadores
✅ **Mayor claridad en operaciones con tipos personalizados.**  
✅ **Permite definir lógica específica para cada tipo de dato.**  
✅ **Mejora la legibilidad del código al usar notación matemática natural.**
