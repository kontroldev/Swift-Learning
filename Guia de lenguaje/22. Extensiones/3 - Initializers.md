# Inicializadores en Extensiones en Swift

Swift permite agregar **nuevos inicializadores** a tipos existentes mediante extensiones (`extension`). Esto permite extender la funcionalidad de estructuras, clases y enumeraciones sin modificar su implementación original.

## Agregando Inicializadores con Extensiones

Las extensiones pueden agregar inicializadores personalizados, lo que permite mejorar la flexibilidad en la creación de instancias.

### Ejemplo: Extender `Rect` con un nuevo inicializador

```swift
struct Rect {
    var origin = (x: 0.0, y: 0.0)
    var size = (width: 0.0, height: 0.0)
}

extension Rect {
    init(center: (x: Double, y: Double), size: (width: Double, height: Double)) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(origin: (x: originX, y: originY), size: size)
    }
}

let rect = Rect(center: (x: 5.0, y: 5.0), size: (width: 10.0, height: 10.0))
print("Rect origin: (\(rect.origin.x), \(rect.origin.y))")
```

### Explicación
- `extension Rect` extiende la estructura `Rect`.
- Se agrega un nuevo inicializador que permite crear un rectángulo basado en su centro y tamaño.
- Se calcula el origen (`origin.x`, `origin.y`) a partir del centro y el tamaño.
- Se usa `self.init` para llamar al inicializador predeterminado.

### Salida esperada
```
Rect origin: (0.0, 0.0)
```

## Restricciones de Inicializadores en Extensiones
- **Las extensiones no pueden agregar inicializadores designados a clases**.
- **No pueden modificar propiedades almacenadas existentes**.
- **Pueden agregar inicializadores de conveniencia a clases**.

## Beneficios de Usar Inicializadores en Extensiones
- **Permiten crear inicializadores personalizados sin modificar el código original**.
- **Facilitan la creación de instancias con parámetros específicos**.
- **Mejoran la modularidad y reutilización del código**.

