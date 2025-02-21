# Acceso en Conflicto a Propiedades en Swift

En Swift, el acceso simultáneo a **propiedades mutables** dentro de la misma estructura puede causar **conflictos de acceso a memoria** si un método intenta modificar una propiedad mientras se accede a otra.

## Ejemplo de Conflicto de Acceso a Propiedades
El siguiente código provoca un **conflicto de acceso**:

```swift
struct Player {
    var name: String
    var score: Int
    
    mutating func updateScore(to newScore: Int) {
        score = newScore
        print("\(name) ahora tiene \(score) puntos") // Conflicto de acceso a `name`
    }
}

var player = Player(name: "Alex", score: 10)
player.updateScore(to: 20) // ERROR: Conflicto de acceso a `name` y `score`
```

### Explicación:
- `updateScore(to:)` **modifica `score`** mientras accede a `name`, creando un **conflicto de acceso**.
- Swift **detecta este acceso conflictivo y previene la ejecución**.

## Cómo Evitar Conflictos de Acceso a Propiedades
Para evitar conflictos, se recomienda **crear una copia local de `self` antes de modificar sus propiedades**:

```swift
struct Player {
    var name: String
    var score: Int
    
    mutating func updateScore(to newScore: Int) {
        var tempSelf = self // Copia local de `self`
        tempSelf.score = newScore
        print("\(tempSelf.name) ahora tiene \(tempSelf.score) puntos")
        self = tempSelf // Se reasigna la instancia modificada
    }
}

var player = Player(name: "Alex", score: 10)
player.updateScore(to: 20) // Ahora es seguro
```

## Beneficios de la Seguridad de Acceso en Swift
- **Evita errores difíciles de depurar y fallos inesperados**.
- **Garantiza que las modificaciones sean seguras y predecibles**.
- **Mejora la eficiencia y optimización del acceso a memoria**.

