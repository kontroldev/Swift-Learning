# Resolviendo Ciclos de Referencia Fuerte con Closures en Swift

Para evitar **ciclos de referencia fuerte** en Swift cuando un closure captura `self`, se pueden usar **capturas débiles (`weak`) o no poseídas (`unowned`)**.

## Uso de Capturas Débiles (`weak`)
Cuando `self` puede volverse `nil`, usa `weak` dentro del closure:

```swift
class HTMLElement {
    let name: String
    let text: String?
    
    lazy var asHTML: () -> String = { [weak self] in
        guard let self = self else { return "" }
        return "<\(self.name)>\(self.text ?? "")</\(self.name)>"
    }
    
    init(name: String, text: String? = nil) {
        self.name = name
        self.text = text
    }
    
    deinit {
        print("\(name) ha sido liberado de memoria")
    }
}

var heading: HTMLElement? = HTMLElement(name: "h1", text: "Hola, Swift!")
print(heading!.asHTML())
heading = nil // Ahora la memoria se libera correctamente
```

### Explicación:
- `[weak self]` evita un ciclo de referencia fuerte al **no incrementar el conteo de referencias**.
- `guard let self = self` asegura que `self` aún exista antes de su uso.
- Cuando `heading = nil`, la memoria se libera correctamente.

## Uso de Capturas No Poseídas (`unowned`)
Si `self` nunca será `nil` mientras el closure exista, usa `unowned`:

```swift
lazy var asHTML: () -> String = { [unowned self] in
    return "<\(self.name)>\(self.text ?? "")</\(self.name)>"
}
```

### Diferencia entre `weak` y `unowned`
| Caso | Usar `weak` | Usar `unowned` |
|------|------------|---------------|
| `self` puede ser `nil` | ✅ | ❌ |
| `self` nunca será `nil` | ❌ | ✅ |

## Beneficios de Resolver Ciclos de Referencia Fuerte
- **Evita fugas de memoria** en closures que capturan `self`.
- **Mejora la eficiencia**, permitiendo la liberación de memoria.
- **Mantiene un código seguro y predecible**.

