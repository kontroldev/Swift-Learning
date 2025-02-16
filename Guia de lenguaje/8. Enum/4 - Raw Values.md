# Valores Brutos en Enumeraciones en Swift

Las enumeraciones en Swift pueden tener valores predefinidos llamados *raw values* que permiten asignar un valor constante a cada caso.

## Definición de una Enumeración con Valores Brutos

Puedes definir una enumeración con valores brutos especificando el tipo de datos de los valores:

```swift
enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}
```

En este caso, `venus` tomará automáticamente el valor `2`, `earth` el `3`, y así sucesivamente.

También puedes usar valores `String`:

```swift
enum CompassPoint: String {
    case north = "North"
    case south = "South"
    case east = "East"
    case west = "West"
}
```

## Acceso a los Valores Brutos

Puedes acceder al valor bruto de un caso usando la propiedad `.rawValue`:

```swift
let planet = Planet.earth
print("Planet: \(planet.rawValue)") // Output: Planet: 3
```

## Inicialización con un Valor Bruto

Swift permite crear una instancia de una enumeración a partir de un valor bruto:

```swift
if let possiblePlanet = Planet(rawValue: 4) {
    print("Selected planet: \(possiblePlanet)")
} else {
    print("Invalid planet")
}
```

### Salida esperada:
```
Selected planet: mars
```

Si el valor proporcionado no coincide con ningún caso, la inicialización devolverá `nil`.

---

Este documento explica cómo utilizar valores brutos en enumeraciones en Swift, permitiendo definir y recuperar valores constantes de forma eficiente.