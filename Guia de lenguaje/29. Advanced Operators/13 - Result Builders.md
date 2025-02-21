# Result Builders en Swift

Swift introduce **Result Builders** para construir valores complejos a partir de expresiones más simples, permitiendo definir DSLs (Domain-Specific Languages) de manera declarativa.

## ¿Qué es un Result Builder?
Un **Result Builder** permite combinar múltiples expresiones en un solo valor compuesto, lo que es útil en SwiftUI y otras APIs que requieren estructuras jerárquicas.

## Ejemplo de Uso de Result Builders
```swift
@resultBuilder
struct StringArrayBuilder {
    static func buildBlock(_ components: String...) -> [String] {
        return components
    }
}

func buildStringArray(@StringArrayBuilder _ content: () -> [String]) -> [String] {
    return content()
}

let words = buildStringArray {
    "Hola"
    "Mundo"
    "Swift"
}

print(words) // ["Hola", "Mundo", "Swift"]
```

### Explicación:
- `@resultBuilder` define el tipo `StringArrayBuilder`, que permite construir un array de `String` de manera declarativa.
- La función `buildStringArray` utiliza el result builder para combinar cadenas en un array.

## Beneficios de los Result Builders
✅ **Facilitan la creación de DSLs en Swift.**  
✅ **Mejoran la legibilidad del código en estructuras jerárquicas.**  
✅ **Se utilizan ampliamente en SwiftUI para construir interfaces de usuario.**
