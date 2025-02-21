# Resolviendo Ciclos de Referencia Fuerte entre Instancias de Clase en Swift

Para evitar **ciclos de referencia fuerte** en Swift, se pueden usar **referencias débiles (`weak`) y referencias no poseídas (`unowned`)**. Estas referencias no aumentan el conteo de referencias de ARC, permitiendo que las instancias se liberen correctamente.

## Uso de Referencias Débiles (`weak`)
Las referencias **débiles (`weak`)** se usan cuando la referencia puede volverse `nil` en algún momento.

```swift
class Person {
    let name: String
    var apartment: Apartment?
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("\(name) ha sido liberado de memoria")
    }
}

class Apartment {
    let unit: String
    weak var tenant: Person? // Se usa `weak` para evitar el ciclo
    
    init(unit: String) {
        self.unit = unit
    }
    
    deinit {
        print("Apartamento \(unit) ha sido liberado de memoria")
    }
}

var john: Person?
var unit4A: Apartment?

john = Person(name: "John Doe")
unit4A = Apartment(unit: "4A")

john?.apartment = unit4A
unit4A?.tenant = john

john = nil
unit4A = nil // Ambas instancias se liberan correctamente
```

### Explicación:
- `tenant` se declara como `weak var tenant: Person?`, permitiendo que `unit4A` no retenga una referencia fuerte a `john`.
- Cuando `john` se establece en `nil`, la referencia débil también se vuelve `nil`, permitiendo la liberación de memoria.

## Uso de Referencias No Poseídas (`unowned`)
Se usa `unowned` cuando la referencia **nunca será `nil` después de ser inicializada**.

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
- `owner` en `CreditCard` es `unowned`, ya que **siempre debe tener un `Customer` asociado**.
- Cuando `bob` se establece en `nil`, `CreditCard` se libera también sin causar un ciclo de referencia.

## Cuándo Usar `weak` o `unowned`
| Caso | Usar `weak` | Usar `unowned` |
|------|------------|---------------|
| Puede volverse `nil` en algún momento | ✅ | ❌ |
| Siempre tendrá un valor después de la inicialización | ❌ | ✅ |

## Beneficios de Resolver Ciclos de Referencia Fuerte
- **Evita fugas de memoria** en instancias con referencias mutuas.
- **Optimiza el uso de memoria**, permitiendo la liberación automática de objetos.
- **Mantiene el código seguro y predecible**, sin dependencias de referencia innecesarias.

