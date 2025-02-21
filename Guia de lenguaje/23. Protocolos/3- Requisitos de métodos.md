# Requisitos de Métodos en Protocolos en Swift

Los protocolos en Swift pueden requerir que los tipos conformes implementen métodos específicos. Estos métodos pueden ser de instancia o de tipo.

## Declaración de Métodos en un Protocolo

Los métodos en los protocolos se declaran de la siguiente manera:

```swift
protocol RandomNumberGenerator {
    func random() -> Double
}
```

Los tipos que adopten el protocolo deben implementar este método.

### Implementación de Métodos en un Tipo Conforme

```swift
class LinearCongruentialGenerator: RandomNumberGenerator {
    var lastRandom = 42.0
    let m = 139968.0
    let a = 3877.0
    let c = 29573.0
    
    func random() -> Double {
        lastRandom = (lastRandom * a + c).truncatingRemainder(dividingBy: m)
        return lastRandom / m
    }
}

let generator = LinearCongruentialGenerator()
print("Número aleatorio: \(generator.random())")
```

### Explicación
- `RandomNumberGenerator` requiere un método `random()`.
- `LinearCongruentialGenerator` adopta el protocolo e implementa `random()`.
- Se instancia un generador y se imprime un número aleatorio.

### Salida esperada
```
Número aleatorio: 0.3746499199817101
```

## Beneficios del Uso de Requisitos de Métodos en Protocolos
- **Garantiza que los tipos conformes provean ciertos comportamientos**.
- **Define interfaces claras y reutilizables**.
- **Facilita la programación orientada a protocolos** en Swift.

