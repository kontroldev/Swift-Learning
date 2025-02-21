# Colecciones de Tipos de Protocolo en Swift

En Swift, puedes almacenar múltiples instancias de tipos conformes a un protocolo en una misma colección. Esto permite trabajar con objetos heterogéneos que comparten un comportamiento común.

## Uso de Protocolos en Colecciones

Cuando una colección contiene elementos que conforman un protocolo, Swift los trata como el **tipo del protocolo**, lo que permite acceder solo a las propiedades y métodos definidos en él.

### Ejemplo: Colección de Objetos que Conforman un Protocolo

```swift
protocol TextRepresentable {
    var textualDescription: String { get }
}

struct Animal: TextRepresentable {
    let name: String
    let species: String
    var textualDescription: String {
        return "\(name) es un \(species)"
    }
}

struct Car: TextRepresentable {
    let model: String
    var textualDescription: String {
        return "Coche modelo \(model)"
    }
}

let items: [TextRepresentable] = [
    Animal(name: "Rex", species: "perro"),
    Car(model: "Tesla Model 3")
]

for item in items {
    print(item.textualDescription)
}
```

### Explicación
- Se define el protocolo `TextRepresentable` con la propiedad `textualDescription`.
- `Animal` y `Car` conforman el protocolo e implementan `textualDescription`.
- Se crea un array de `TextRepresentable`, permitiendo almacenar `Animal` y `Car` juntos.
- Se itera sobre la colección, imprimiendo la descripción de cada elemento.

### Salida esperada
```
Rex es un perro
Coche modelo Tesla Model 3
```

## Beneficios de Usar Colecciones de Tipos de Protocolo
- **Mayor flexibilidad** al almacenar diferentes tipos en una misma colección.
- **Mejor organización del código** al trabajar con abstracciones en lugar de tipos específicos.
- **Facilita la programación orientada a protocolos**, promoviendo la reutilización del código.


