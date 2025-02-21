# Herencia de Protocolos en Swift

En Swift, los protocolos pueden **heredar** de uno o más protocolos existentes. Esto permite construir protocolos más específicos a partir de otros más generales, fomentando la reutilización y estructuración del código.

## Definición de un Protocolo que Hereda de Otro

Un protocolo puede heredar de otro especificándolo después de los dos puntos (`:`), de manera similar a cómo las clases heredan de una superclase.

```swift
protocol Named {
    var name: String { get }
}

protocol Aged {
    var age: Int { get }
}

protocol Person: Named, Aged {
    var occupation: String { get }
}
```

### Explicación
- `Named` y `Aged` son protocolos independientes que requieren una propiedad `name` y `age`, respectivamente.
- `Person` hereda de ambos, por lo que cualquier tipo que conforme a `Person` debe implementar `name`, `age` y `occupation`.

### Ejemplo de Implementación de un Protocolo Heredado

```swift
struct Employee: Person {
    let name: String
    let age: Int
    let occupation: String
}

let employee = Employee(name: "Carlos", age: 35, occupation: "Desarrollador iOS")
print("\(employee.name) tiene \(employee.age) años y trabaja como \(employee.occupation)")
```

### Salida esperada
```
Carlos tiene 35 años y trabaja como Desarrollador iOS
```

## Beneficios de la Herencia en Protocolos
- **Facilita la organización del código** al dividir funcionalidades en protocolos pequeños y reutilizables.
- **Permite la combinación de múltiples comportamientos** en un solo protocolo.
- **Fomenta la flexibilidad y extensibilidad** en la programación orientada a protocolos.
