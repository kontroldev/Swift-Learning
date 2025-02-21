# Composición de Protocolos en Swift

En Swift, puedes combinar múltiples protocolos en un solo tipo utilizando la **composición de protocolos**. Esto permite que un tipo conforme a múltiples protocolos sin necesidad de crear una jerarquía de herencia compleja.

## Uso de la Composición de Protocolos

La composición de protocolos se especifica con el operador `&` entre los nombres de los protocolos.

### Ejemplo: Definir y Usar una Composición de Protocolos

```swift
protocol Named {
    var name: String { get }
}

protocol Aged {
    var age: Int { get }
}

struct Person: Named, Aged {
    let name: String
    let age: Int
}

func celebrateBirthday(of celebrant: Named & Aged) {
    print("Feliz cumpleaños \(celebrant.name), ahora tienes \(celebrant.age) años!")
}

let person = Person(name: "Carlos", age: 30)
celebrateBirthday(of: person)
```

### Explicación
- Se definen dos protocolos: `Named` y `Aged`.
- `Person` conforma a ambos protocolos.
- La función `celebrateBirthday(of:)` acepta un parámetro que debe conformar a **ambos protocolos** (`Named & Aged`).
- Se crea una instancia de `Person` y se pasa a la función, asegurando que cumple ambos requisitos.

### Salida esperada
```
Feliz cumpleaños Carlos, ahora tienes 30 años!
```

## Beneficios de la Composición de Protocolos
- **Evita la herencia innecesaria**, permitiendo estructurar el código de manera más flexible.
- **Permite definir tipos más específicos** sin necesidad de modificar la estructura del código existente.
- **Mejora la reutilización del código** al permitir que un tipo adopte solo las capacidades necesarias.
