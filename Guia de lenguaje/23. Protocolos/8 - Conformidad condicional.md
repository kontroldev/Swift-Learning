# Conformidad Condicional a un Protocolo en Swift

Swift permite que un tipo conforme a un protocolo **de manera condicional**, lo que significa que la conformidad solo se aplica cuando se cumplen ciertos requisitos. Esto es útil cuando se trabaja con **tipos genéricos**.

## Implementación de Conformidad Condicional

Un tipo genérico puede conformar a un protocolo solo si su tipo genérico cumple con ciertos requisitos.

### Ejemplo: Hacer que `Array` conforme a `TextRepresentable` solo si sus elementos también lo hacen

```swift
protocol TextRepresentable {
    var textualDescription: String { get }
}

extension Array: TextRepresentable where Element: TextRepresentable {
    var textualDescription: String {
        return self.map { $0.textualDescription }.joined(separator: ", ")
    }
}

struct Animal: TextRepresentable {
    let name: String
    let species: String
    var textualDescription: String {
        return "\(name) es un \(species)"
    }
}

let pets = [Animal(name: "Rex", species: "perro"), Animal(name: "Milo", species: "gato")]
print(pets.textualDescription)
```

### Explicación
- Se define el protocolo `TextRepresentable` con una propiedad `textualDescription`.
- Se usa una **extensión condicional** para hacer que `Array` conforme a `TextRepresentable`, pero **solo si sus elementos también conforman** al protocolo.
- Se crea una estructura `Animal` que cumple con `TextRepresentable`.
- Se genera un arreglo de `Animal` y se imprime su representación textual.

### Salida esperada
```
Rex es un perro, Milo es un gato
```

## Beneficios de la Conformidad Condicional a Protocolos
- **Evita aplicar conformidad innecesaria a todos los casos**.
- **Hace que el código sea más flexible y reutilizable**.
- **Aprovecha la potencia de los protocolos y los tipos genéricos en Swift**.

