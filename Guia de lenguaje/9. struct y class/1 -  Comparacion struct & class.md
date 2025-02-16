# Comparación entre Estructuras y Clases en Swift

Swift ofrece dos tipos principales para definir modelos de datos: *estructuras* (`struct`) y *clases* (`class`). Aunque tienen similitudes, también presentan diferencias clave que afectan su uso.

## Similitudes entre Estructuras y Clases

Ambas pueden:
- Definir propiedades para almacenar valores.
- Definir métodos para proporcionar funcionalidad.
- Definir inicializadores.
- Ser extendidas para añadir funcionalidades.
- Conformar protocolos para adoptar comportamientos específicos.

## Diferencias Clave

### 1. Tipos de Valor vs. Tipos de Referencia
- **Estructuras (`struct`)** son *tipos de valor*. Cuando una instancia de una estructura se asigna a una variable o se pasa a una función, se copia en lugar de compartirse.
- **Clases (`class`)** son *tipos de referencia*. Cuando una instancia de una clase se asigna a una variable o se pasa a una función, se comparte la misma referencia en memoria.

```swift
struct PersonStruct {
    var name: String
}

class PersonClass {
    var name: String
    init(name: String) {
        self.name = name
    }
}

var structPerson = PersonStruct(name: "Alice")
var classPerson = PersonClass(name: "Bob")

var anotherStructPerson = structPerson
var anotherClassPerson = classPerson

anotherStructPerson.name = "Charlie"
anotherClassPerson.name = "David"

print(structPerson.name) // "Alice" (copia independiente)
print(classPerson.name)  // "David" (se comparte la referencia)
```

### 2. Herencia
- **Las clases pueden heredar** de otras clases, lo que permite reutilizar código y definir jerarquías de clases.
- **Las estructuras no soportan herencia** y están diseñadas para ser más simples y eficientes.

```swift
class Vehicle {
    var speed = 0
}

class Car: Vehicle {
    var hasSunroof = false
}

let myCar = Car()
myCar.speed = 60
print(myCar.speed) // 60
```

### 3. Deinitializers
- **Las clases pueden definir un `deinit`**, que permite ejecutar código cuando una instancia se libera de memoria.
- **Las estructuras no tienen `deinit`**, ya que su ciclo de vida es manejado automáticamente.

```swift
class ExampleClass {
    deinit {
        print("Instance deallocated")
    }
}
```

### 4. Mutabilidad de Propiedades
- **Las estructuras con propiedades mutables requieren la palabra clave `mutating` en métodos que las modifiquen.**
- **Las clases pueden modificar sus propiedades sin necesidad de `mutating`**, ya que son tipos de referencia.

```swift
struct CounterStruct {
    var count = 0
    mutating func increment() {
        count += 1
    }
}

class CounterClass {
    var count = 0
    func increment() {
        count += 1
    }
}
```

## Cuándo Usar Cada Uno

| **Situación**                | **Usar una Estructura**  | **Usar una Clase** |
|-----------------------------|-------------------------|--------------------|
| Datos inmutables o ligeros  | ✅                        | ❌                 |
| Necesidad de herencia       | ❌                        | ✅                 |
| Referencias compartidas     | ❌                        | ✅                 |
| Copias independientes       | ✅                        | ❌                 |
| Manejo de ciclo de vida     | ❌                        | ✅ (con `deinit`)  |

---

Este documento explica las diferencias clave entre *estructuras* y *clases* en Swift, ayudando a elegir el tipo adecuado según el contexto.
