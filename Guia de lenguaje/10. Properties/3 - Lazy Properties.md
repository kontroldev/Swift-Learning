# Propiedades Almacenadas Perezosas en Swift

Las *propiedades almacenadas perezosas* (`lazy stored properties`) son aquellas cuyo valor no se inicializa hasta que se acceden por primera vez. Se declaran con la palabra clave `lazy`.

## Definición de una Propiedad Perezosa

```swift
class DataLoader {
    init() {
        print("Cargando datos...")
    }
}

struct DataManager {
    lazy var loader = DataLoader()
    var data: [String] = []
}
```

En este ejemplo, `loader` no se inicializa hasta que se accede por primera vez.

## Uso de una Propiedad Perezosa

```swift
var manager = DataManager()
print("Antes de acceder a loader")
manager.loader // Aquí se inicializa `loader`
```

### Salida esperada:
```
Antes de acceder a loader
Cargando datos...
```

## Reglas de Uso

- Solo se pueden declarar propiedades `lazy` en **variables (`var`)**. No se permite en constantes (`let`).
- No funciona en **propiedades de enumeraciones**.
- Se usa comúnmente para evitar cálculos innecesarios o cuando el valor depende de factores externos.

```swift
struct Example {
    lazy var expensiveCalculation: Int = {
        print("Calculando...")
        return 42
    }()
}

var example = Example()
print("Antes de acceder a la propiedad")
print(example.expensiveCalculation) // Aquí se ejecuta el cálculo
```

### Salida esperada:
```
Antes de acceder a la propiedad
Calculando...
42
```

---

Este documento explica cómo usar *propiedades almacenadas perezosas* (`lazy stored properties`) en Swift para optimizar el rendimiento al evitar cálculos innecesarios hasta que sean requeridos.
