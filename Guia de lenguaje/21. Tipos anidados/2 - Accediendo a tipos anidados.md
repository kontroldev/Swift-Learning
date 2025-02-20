# Referencia a Tipos Anidados en Swift

En Swift, se puede acceder a tipos anidados desde fuera de su contexto utilizando la notación de punto (`.`). Esto permite referirse a tipos internos dentro de estructuras, clases o enumeraciones de manera clara y organizada.

## Accediendo a un Tipo Anidado

Cuando un tipo está anidado dentro de otro, se debe hacer referencia a él precedido por el tipo contenedor:

```swift
struct BlackjackCard {
    enum Suit: Character {
        case hearts = "♥", diamonds = "♦", spades = "♠", clubs = "♣"
    }
}

let heartSymbol = BlackjackCard.Suit.hearts.rawValue
print("Símbolo del corazón: \(heartSymbol)")
```

### Explicación
- `Suit` es una enumeración anidada dentro de `BlackjackCard`.
- Se accede a un caso específico de `Suit` (`hearts`) utilizando `BlackjackCard.Suit.hearts`.
- Se obtiene el valor `rawValue` de `hearts`, que es "♥".

### Salida esperada
```
Símbolo del corazón: ♥
```

## Beneficios de Usar Tipos Anidados
- **Organización del código**: Mantiene la relación lógica entre tipos.
- **Claridad**: Evita conflictos de nombres en el espacio global.
- **Modularidad**: Facilita la reutilización y encapsulación de código relacionado.

