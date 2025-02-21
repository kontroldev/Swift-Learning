# Protocolos como Tipos en Swift

Los protocolos en Swift pueden ser utilizados como tipos. Esto permite definir variables, parámetros y valores de retorno que pueden adoptar cualquier tipo que conforme a un protocolo específico.

## Uso de un Protocolo como Tipo

Un protocolo puede ser utilizado como tipo en las siguientes situaciones:
- **Variables y constantes**
- **Parámetros de funciones**
- **Valores de retorno de funciones**
- **Colecciones que contienen elementos conformes a un protocolo**

### Ejemplo: Definir un Protocolo y Usarlo como Tipo

```swift
protocol RandomNumberGenerator {
    func random() -> Double
}

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

var generator: RandomNumberGenerator = LinearCongruentialGenerator()
print("Número aleatorio: \(generator.random())")
```

### Explicación
- Se define el protocolo `RandomNumberGenerator` con un método `random()`.
- La clase `LinearCongruentialGenerator` conforma el protocolo e implementa el método `random()`.
- Se crea una variable `generator` de tipo `RandomNumberGenerator`, lo que permite almacenar cualquier objeto que conforme al protocolo.

### Salida esperada
```
Número aleatorio: 0.3746499199817101
```

## Beneficios del Uso de Protocolos como Tipos
- **Mayor flexibilidad** al definir interfaces reutilizables.
- **Permite trabajar con abstracciones** sin depender de implementaciones específicas.
- **Facilita la programación orientada a protocolos**.

