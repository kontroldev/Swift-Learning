# Sintaxis de Enumeraciones en Swift

Las *enumeraciones* en Swift definen un tipo de datos común para un grupo de valores relacionados y permiten trabajar con ellos de manera segura dentro del código.

## Definición de una Enumeración

Puedes definir una enumeración usando la palabra clave `enum`:

```swift
enum CompassPoint {
    case north
    case south
    case east
    case west
}
```

También puedes escribir varios casos en una sola línea separados por comas:

```swift
enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}
```

## Uso de una Enumeración

Una vez definida, puedes crear una instancia de la enumeración y asignarle un valor:

```swift
var direction = CompassPoint.north
```

El tipo de `direction` es inferido como `CompassPoint`, por lo que puedes usar una notación más corta:

```swift
direction = .west
```

## Evaluación con *Switch*

Las enumeraciones son ideales para usarse en sentencias `switch`:

```swift
switch direction {
case .north:
    print("Heading north")
case .south:
    print("Heading south")
case .east:
    print("Heading east")
case .west:
    print("Heading west")
}
```

Swift exige que el `switch` cubra todos los casos de la enumeración, garantizando un manejo completo de los valores posibles.

---

Este documento cubre la sintaxis básica de las *enumeraciones* en Swift, proporcionando ejemplos prácticos para definir y utilizar estos tipos.
