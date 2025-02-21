# Referencias `unowned` Opcionales en Swift

Las **referencias `unowned` opcionales** permiten evitar ciclos de referencia fuerte al mismo tiempo que admiten valores `nil`.

## Uso de `unowned` Opcionales

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
    unowned var owner: Customer? // `unowned` opcional para permitir `nil`
    
    init(number: String, owner: Customer?) {
        self.number = number
        self.owner = owner
    }
    
    deinit {
        print("Tarjeta \(number) ha sido liberada de memoria")
    }
}

var bob: Customer?
bob = Customer(name: "Bob Smith")
bob?.card = CreditCard(number: "1234-5678-9876-5432", owner: bob)

bob = nil // Ambas instancias se liberan correctamente
```

### Explicación:
- `owner` en `CreditCard` se declara como `unowned var owner: Customer?`, lo que permite que la referencia sea `nil`.
- `Customer` mantiene una referencia fuerte a `CreditCard`, mientras que `CreditCard` mantiene una **referencia no poseída opcional** a `Customer`.
- Cuando `bob` se establece en `nil`, ambas instancias se liberan correctamente.

## Cuándo Usar `unowned` Opcionales
| Caso | Usar `unowned` opcional |
|------|------------------|
| La referencia puede volverse `nil` en algún momento | ✅ |
| La referencia nunca será `nil` después de la inicialización | ❌ (Usar `unowned` no opcional) |

## Beneficios de `unowned` Opcionales
- **Evita ciclos de referencia fuerte** sin necesidad de `weak`.
- **Permite la asignación de `nil` cuando sea necesario**.
- **Mejor rendimiento en comparación con `weak`**, ya que `unowned` no tiene que gestionar el conteo de referencias.

