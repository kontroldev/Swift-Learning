# Subíndices de Tipo en Swift

Los **subíndices de tipo** (`static subscript`) pertenecen al tipo en sí mismo en lugar de a una instancia específica. Se usan en estructuras y enumeraciones con la palabra clave `static`.

## Definiendo un Subíndice de Tipo

```swift
struct Math {
    static subscript(value: Int) -> Int {
        return value * value
    }
}

print(Math[4]) // 16
```

## Cuándo Usar Subíndices de Tipo

- Para exponer cálculos rápidos sin instanciar un objeto.
- Para acceder a propiedades compartidas a nivel de tipo.
- Para representar accesos estáticos en estructuras de datos personalizadas.

---

Este documento explica cómo usar **subíndices de tipo** en Swift mediante `static subscript`.
