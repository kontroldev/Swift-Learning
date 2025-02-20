# Macros Independientes en Swift

Las **macros independientes** (Freestanding Macros) en Swift permiten generar código en tiempo de compilación sin estar directamente asociadas a una declaración específica, como una función o una propiedad. Estas macros pueden utilizarse para realizar transformaciones de código en distintos contextos, facilitando tareas repetitivas y optimizando la mantenibilidad del código.

## ¿Qué son las Macros Independientes?

Las macros independientes son macros que pueden ejecutarse en cualquier lugar del código, sin necesidad de estar vinculadas a una estructura particular. Se utilizan principalmente para generar valores, modificar expresiones o aplicar lógica antes de la compilación.

### Ejemplo de Macro Independiente

```swift
#stringify(2 + 2)
```

En este ejemplo, la macro `#stringify` toma la expresión `2 + 2` y la convierte en una cadena de texto representando la expresión original.

## Beneficios de las Macros Independientes
- **Generación dinámica de código** sin necesidad de definir estructuras adicionales.
- **Mejora en la legibilidad y mantenibilidad** del código al encapsular lógica repetitiva.
- **Mayor flexibilidad** al permitir su uso en distintos contextos sin restricciones.
