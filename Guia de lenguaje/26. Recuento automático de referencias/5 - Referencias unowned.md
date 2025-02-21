# Referencias `unowned` en Swift

Las **referencias no poseídas** (`unowned`) se utilizan en Swift para evitar ciclos de referencia fuerte cuando el objeto referenciado **nunca será `nil` después de ser inicializado**.

## Uso de `unowned`

```swift
class Customer {
    let name: String
    var card: CreditCard?
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("\(name) ha sido liberado de memoria")
    }
}

class CreditCard {
    let number: String
    unowned let owner: Customer // Se usa `unowned` porque la tarjeta siempre tendrá un dueño
    
    init(number: String, owner: Customer) {
        self.number = number
        self.owner = owner
    }
    
    deinit {
        print("Tarjeta \(number) ha sido liberada de memoria")
    }
}

var bob: Customer?
bob = Customer(name: "Bob Smith")
bob?.card = CreditCard(number: "1234-5678-9876-5432", owner: bob!)

bob = nil // Ambas instancias se liberan correctamente
```

### Explicación:
- `owner` en `CreditCard` se declara como `unowned`, lo que significa que no incrementa el conteo de referencias.
- `Customer` siempre debe existir antes que `CreditCard`, por lo que `unowned` es seguro de usar.
- Cuando `bob` se establece en `nil`, la memoria de `CreditCard` también se libera correctamente.

## Cuándo Usar `unowned`
| Caso | Usar `unowned` |
|------|---------------|
| La referencia **nunca** será `nil` después de la inicialización | ✅ |
| Se espera que la referencia pueda ser `nil` en algún momento | ❌ (Usar `weak` en su lugar) |

## Beneficios de `unowned`
- **Evita ciclos de referencia fuerte** en relaciones donde una instancia siempre depende de otra.
- **Reduce la sobrecarga de memoria** en comparación con `weak`, ya que `unowned` no necesita comprobar si la referencia es `nil`.


