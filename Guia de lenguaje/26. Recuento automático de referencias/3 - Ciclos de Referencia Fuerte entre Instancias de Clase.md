# Ciclos de Referencia Fuerte entre Instancias de Clase en Swift

En Swift, **los ciclos de referencia fuerte** ocurren cuando dos instancias de clase mantienen referencias entre sí, impidiendo que ARC libere la memoria.

## Ejemplo de un Ciclo de Referencia Fuerte

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
    var tenant: Person?
    
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

// Ahora ambas instancias tienen referencias fuertes entre sí
john = nil
unit4A = nil // El ciclo de referencia impide que se liberen de memoria
```

### Explicación:
1. `john` y `unit4A` se crean y hacen referencia entre sí.
2. Cuando intentamos liberar ambas instancias con `nil`, **las referencias se mantienen** porque cada una aún tiene una referencia fuerte a la otra.
3. Esto crea una **fuga de memoria**, ya que ARC no puede liberar la memoria de las instancias atrapadas en el ciclo.

## Consecuencias de los Ciclos de Referencia Fuerte
- **Fugas de memoria**, ya que los objetos quedan en memoria sin posibilidad de ser liberados.
- **Pérdida de recursos**, afectando el rendimiento del programa.

