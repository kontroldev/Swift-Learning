# Cómo Funciona ARC en Swift

El **Conteo Automático de Referencias** (*Automatic Reference Counting*, ARC) en Swift gestiona automáticamente la memoria de instancias de clases, asegurando que los objetos sean liberados cuando ya no se necesiten.

## Funcionamiento de ARC

ARC asigna memoria a las instancias de clase y la libera cuando ya no hay referencias activas a ellas. Cada instancia tiene un **contador de referencias**, que aumenta cuando una nueva variable o constante la referencia y disminuye cuando una referencia se elimina.

### Ejemplo de ARC en Acción

```swift
class Person {
    let name: String
    
    init(name: String) {
        self.name = name
        print("\(name) inicializado")
    }
    
    deinit {
        print("\(name) liberado de memoria")
    }
}

var person1: Person? = Person(name: "Alice")
var person2: Person? = person1 // Aumenta el conteo de referencias
person1 = nil // El objeto sigue existiendo porque `person2` lo mantiene
person2 = nil // El objeto es liberado porque no hay más referencias
```

### Explicación:
1. Se crea una instancia de `Person` y `person1` la referencia.
2. `person2` obtiene una referencia a la misma instancia, incrementando el conteo de referencias.
3. Cuando `person1` se establece en `nil`, la instancia aún no se libera porque `person2` la mantiene.
4. Cuando `person2` se establece en `nil`, el conteo llega a cero y la memoria se libera.

## Beneficios de ARC
- **Optimización automática de memoria** sin necesidad de gestión manual.
- **Evita fugas de memoria** cuando se usa correctamente.
- **Facilita el desarrollo seguro** evitando errores comunes de gestión de memoria.

