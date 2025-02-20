# Métodos en Extensiones en Swift

Swift permite agregar **nuevos métodos** a tipos existentes mediante extensiones (`extension`). Esto facilita la mejora de funcionalidades sin modificar la implementación original del tipo.

## Agregando Métodos con Extensiones

Las extensiones pueden agregar métodos de instancia y de tipo a estructuras, clases y enumeraciones.

### Ejemplo: Agregar un método a `Int`

```swift
extension Int {
    func repetitions(task: () -> Void) {
        for _ in 0..<self {
            task()
        }
    }
}

5.repetitions {
    print("Hola, Swift!")
}
```

### Explicación
- `extension Int` extiende el tipo `Int`.
- Se agrega el método `repetitions(task:)` que ejecuta un cierre (`task`) la cantidad de veces indicada por `self`.
- Se usa `5.repetitions` para imprimir "Hola, Swift!" cinco veces.

### Salida esperada
```
Hola, Swift!
Hola, Swift!
Hola, Swift!
Hola, Swift!
Hola, Swift!
```

## Beneficios de Usar Métodos en Extensiones
- **Permiten agregar funcionalidades sin modificar la implementación original**.
- **Facilitan la reutilización del código** al encapsular comportamientos dentro de tipos existentes.
- **Mejoran la claridad y legibilidad del código** al proporcionar métodos más intuitivos y expresivos.

