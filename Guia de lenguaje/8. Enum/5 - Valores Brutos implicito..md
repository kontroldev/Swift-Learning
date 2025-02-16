# Valores Brutos Implícitos en Enumeraciones en Swift

Cuando defines una enumeración con valores brutos (`raw values`), Swift puede asignar automáticamente valores implícitos dependiendo del tipo de dato utilizado.

## Asignación Implícita de Valores Enteros

Si defines una enumeración con valores brutos de tipo `Int` sin asignar valores manualmente, Swift comienza desde `0` y asigna valores incrementales:

```swift
enum Planet: Int {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}
```

Cada caso recibe un valor entero empezando desde `0`:

```swift
print(Planet.mercury.rawValue) // 0
print(Planet.venus.rawValue)   // 1
print(Planet.earth.rawValue)   // 2
```

Si especificas manualmente el valor de un caso, los siguientes continúan desde ahí:

```swift
enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}
```

Aquí `venus` tomará automáticamente `2`, `earth` `3`, y así sucesivamente.

## Asignación Implícita de Valores de Tipo String

Cuando defines una enumeración con valores `String`, Swift asigna automáticamente el nombre del caso como su valor:

```swift
enum CompassPoint: String {
    case north, south, east, west
}
```

Cada caso recibe su propio nombre como valor:

```swift
print(CompassPoint.north.rawValue) // "north"
print(CompassPoint.south.rawValue) // "south"
```

Esto es útil cuando necesitas valores representativos sin definirlos manualmente.

---

Este documento explica cómo Swift asigna valores brutos implícitos en enumeraciones cuando se utilizan tipos `Int` y `String`, facilitando su uso sin necesidad de asignaciones explícitas.