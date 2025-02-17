# Propiedades Opcionales en Swift

En Swift, puedes definir propiedades opcionales en una clase o estructura, lo que permite que no tengan un valor inicial cuando se crea una instancia.

## Declarando Propiedades Opcionales

Cuando una propiedad puede no tener un valor al inicializar un objeto, se declara como opcional (`?`).

```swift
class Person {
    var name: String
    var age: Int?
    
    init(name: String) {
        self.name = name
    }
}

let person = Person(name: "Alice")
print(person.age) // nil
```

En este ejemplo, `age` es opcional y no es obligatorio asignarle un valor en la inicialización.

## Asignando Valores Posteriormente

Puedes asignar un valor a una propiedad opcional después de crear la instancia:

```swift
person.age = 25
print(person.age!) // 25
```

## Cuándo Usar Propiedades Opcionales

- Cuando una propiedad puede no tener un valor al inicializar una instancia.
- Para representar datos que pueden ser `nil` en algún momento de la vida del objeto.
- Para evitar proporcionar valores por defecto innecesarios.

---

Este documento explica cómo usar **propiedades opcionales** en Swift para manejar valores que pueden estar ausentes.