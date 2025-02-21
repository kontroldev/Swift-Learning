# Acceso en Conflicto a `self` en Métodos en Swift

Swift impone restricciones para evitar **conflictos de acceso a `self`** en métodos que modifican instancias mutables. Un conflicto ocurre cuando un método modifica `self` mientras otra parte del código accede simultáneamente a una propiedad de `self`.

## Ejemplo de Conflicto de Acceso a `self`
El siguiente código genera un **conflicto de acceso**:

```swift
struct Player {
    var name: String
    var score: Int
    
    mutating func updateScore(to newScore: Int) {
        self.score = newScore
        print("\(name) ahora tiene \(self.score) puntos") // Conflicto de acceso a `self`
    }
}

var player = Player(name: "Alex", score: 10)
player.updateScore(to: 20) // ERROR: Conflicto de acceso a `self`
```

### Explicación:
- `updateScore(to:)` modifica `self.score`, lo que **crea un acceso prolongado a `self`**.
- Simultáneamente, `print("\(name) ahora tiene \(self.score) puntos")` accede a `self.name`, generando un conflicto.
- Swift **detecta el conflicto en tiempo de ejecución y lo previene**.

## Cómo Evitar Conflictos de Acceso a `self`
Para evitar estos conflictos, se recomienda **hacer una copia local de `self` antes de modificar sus propiedades**:

```swift
struct Player {
    var name: String
    var score: Int
    
    mutating func updateScore(to newScore: Int) {
        var tempSelf = self // Copia local de `self`
        tempSelf.score = newScore
        print("\(tempSelf.name) ahora tiene \(tempSelf.score) puntos")
        self = tempSelf // Se reasigna el valor final a `self`
    }
}

var player = Player(name: "Alex", score: 10)
player.updateScore(to: 20) // Ahora es seguro
```

## Beneficios de la Seguridad de Acceso en Swift
- **Evita comportamientos inesperados y errores difíciles de depurar**.
- **Garantiza que los cambios en `self` sean seguros y predecibles**.
- **Mejora la eficiencia y permite optimizaciones de memoria**.

