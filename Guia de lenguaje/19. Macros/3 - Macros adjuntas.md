# Macros Adjuntas en Swift

Las **macros adjuntas** (Attached Macros) en Swift son un tipo de macro que se asocia directamente a una declaración, como una función, una propiedad o una estructura. Estas macros permiten modificar o generar código adicional basado en el elemento al que están vinculadas.

## ¿Qué son las Macros Adjuntas?

A diferencia de las macros independientes, las macros adjuntas están diseñadas para actuar sobre una declaración específica. Esto permite extender funcionalidades sin modificar manualmente el código fuente.

### Ejemplo de Macro Adjunta

```swift
@addLogging
func calcularSuma(_ a: Int, _ b: Int) -> Int {
    return a + b
}
```

En este caso, `@addLogging` es una macro que podría generar automáticamente código para registrar las llamadas a la función `calcularSuma`.

## Tipos de Macros Adjuntas

Existen diferentes tipos de macros adjuntas en Swift:
- **Macros de función**: Se adjuntan a funciones y pueden modificar su comportamiento.
- **Macros de propiedades**: Se aplican a propiedades para agregar funcionalidades adicionales.
- **Macros de estructura y clases**: Permiten modificar tipos completos.

## Beneficios de las Macros Adjuntas
- **Extensión del comportamiento de funciones y propiedades** sin modificar manualmente el código.
- **Facilidad de mantenimiento y reutilización** al centralizar la lógica en macros reutilizables.
- **Mayor seguridad y consistencia** en la aplicación de patrones de diseño y validaciones.

