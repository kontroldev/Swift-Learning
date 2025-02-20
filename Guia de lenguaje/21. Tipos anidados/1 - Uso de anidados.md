# Tipos Anidados en Acción en Swift

Swift permite definir **tipos anidados**, es decir, estructuras, clases y enumeraciones dentro de otras estructuras, clases o enumeraciones. Esto facilita la organización del código y encapsula tipos relacionados dentro de su contexto lógico.

## Uso de Tipos Anidados

A continuación, se muestra cómo se pueden utilizar los tipos anidados en una enumeración:

```swift
struct BlackjackCard {
    // Enumeración anidada para representar los valores de las cartas
    enum Suit: Character {
        case hearts = "♥", diamonds = "♦", spades = "♠", clubs = "♣"
    }
    
    enum Rank {
        case two, three, four, five, six, seven, eight, nine, ten
        case jack, queen, king, ace
        
        struct Values {
            let first: Int
            let second: Int?
        }
        
        var values: Values {
            switch self {
            case .ace:
                return Values(first: 1, second: 11)
            case .jack, .queen, .king:
                return Values(first: 10, second: nil)
            default:
                return Values(first: self.rawValue, second: nil)
            }
        }
    }
    
    let rank: Rank
    let suit: Suit
    
    var description: String {
        let values = rank.values
        if let second = values.second {
            return "Carta: \(rank) de \(suit.rawValue), Valores: \(values.first) o \(second)"
        } else {
            return "Carta: \(rank) de \(suit.rawValue), Valor: \(values.first)"
        }
    }
}

let card = BlackjackCard(rank: .ace, suit: .spades)
print(card.description)
```

### Explicación del Código
- `Suit` es una **enumeración anidada** que representa los palos de las cartas.
- `Rank` es otra **enumeración anidada** que contiene los valores de las cartas y una estructura `Values` dentro de ella.
- La estructura `Values` almacena los valores que puede tener una carta (por ejemplo, el As puede valer 1 o 11).
- La propiedad `description` devuelve una representación legible de la carta.

### Salida esperada:
```
Carta: ace de ♠, Valores: 1 o 11
```

## Beneficios de los Tipos Anidados
- **Organización del código**: Encapsula tipos dentro de su contexto lógico.
- **Legibilidad**: Evita nombres de tipos genéricos en el espacio global.
- **Modularidad**: Facilita la reutilización de código dentro de un mismo contexto.

