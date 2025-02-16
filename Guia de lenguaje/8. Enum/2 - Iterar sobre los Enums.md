# Iterar sobre Casos de una Enumeración en Swift

Swift permite recorrer todos los casos de una enumeración si esta conforma el protocolo `CaseIterable`.

## Conformidad con `CaseIterable`

Para habilitar la iteración sobre los casos de una enumeración, simplemente agrega `CaseIterable` después del nombre de la enumeración:

```swift
enum Beverage: CaseIterable {
    case coffee, tea, juice, water
}
```

## Iteración sobre los Casos

Puedes acceder a todos los casos de la enumeración mediante la propiedad `allCases`:

```swift
for beverage in Beverage.allCases {
    print(beverage)
}
```

### Salida esperada:
```
coffee
tea
juice
water
```

## Uso en Listas o Selecciones

Dado que `allCases` proporciona un array con todos los valores, se puede utilizar en estructuras de datos dinámicas como listas desplegables:

```swift
let beveragesList = Beverage.allCases.map { "Bebida: \($0)" }
print(beveragesList)
```

### Salida esperada:
```
["Bebida: coffee", "Bebida: tea", "Bebida: juice", "Bebida: water"]
```

---

Este documento explica cómo iterar sobre los casos de una enumeración en Swift usando `CaseIterable`, permitiendo una manipulación eficiente de los valores enumerados.
