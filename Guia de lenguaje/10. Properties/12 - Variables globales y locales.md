# Variables Globales y Locales en Swift

En Swift, puedes definir **variables globales** (accesibles en todo el código) y **variables locales** (limitadas a un bloque específico).

## Variables Globales

Las variables globales se definen fuera de cualquier función, estructura o clase, y están disponibles en todo el ámbito del módulo.

```swift
var globalCounter = 0

func incrementGlobalCounter() {
    globalCounter += 1
}

incrementGlobalCounter()
print(globalCounter) // 1
```

### Características de las Variables Globales:
- Se pueden usar en cualquier parte del código.
- No necesitan inicialización explícita antes de su uso.
- Pueden ser modificadas en diferentes partes del código.

## Variables Locales

Las variables locales se declaran dentro de una función, estructura o clase y solo existen dentro de ese ámbito.

```swift
func localScopeExample() {
    let localCounter = 10
    print(localCounter) // 10
}

// print(localCounter) // ❌ Error: fuera de alcance
```

### Características de las Variables Locales:
- Solo existen dentro del bloque donde se declaran.
- No pueden ser accedidas fuera de su ámbito.
- Se eliminan de la memoria cuando la función termina.

## Diferencia entre Variables Globales y Locales

| **Característica** | **Globales** | **Locales** |
|-------------------|------------|------------|
| Alcance | Todo el módulo | Dentro de una función o bloque |
| Necesitan inicialización previa | No | Sí (antes de su uso) |
| Vida útil | Todo el programa | Se eliminan al salir del ámbito |

---

Este documento explica cómo usar **variables globales y locales** en Swift, destacando sus diferencias en alcance y uso adecuado.
