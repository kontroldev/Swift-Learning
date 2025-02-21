# ARC en Acción en Swift

El **Conteo Automático de Referencias** (*ARC*) gestiona la memoria en Swift al aumentar y disminuir automáticamente el conteo de referencias de las instancias de clase.

## Ejemplo de ARC en Acción

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

var person1: Person?
var person2: Person?
var person3: Person?

person1 = Person(name: "Alice")
person2 = person1
person3 = person1 // Ahora hay tres referencias a la misma instancia

person1 = nil
person2 = nil
person3 = nil // En este punto, la instancia es liberada de memoria
```

### Explicación:
1. Se crea una instancia de `Person` y `person1` la referencia.
2. `person2` y `person3` también apuntan a la misma instancia, incrementando el conteo de referencias.
3. Al establecer todas las referencias en `nil`, el conteo de referencias llega a **cero** y ARC libera la memoria.

## Beneficios de ARC en Acción
- **Gestión automática de memoria sin intervención manual**.
- **Evita fugas de memoria cuando las referencias se manejan correctamente**.
- **Optimiza el rendimiento liberando instancias innecesarias**.

