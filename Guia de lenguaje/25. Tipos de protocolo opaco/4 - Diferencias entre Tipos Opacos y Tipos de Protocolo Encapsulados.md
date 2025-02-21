# Diferencias entre Tipos Opacos y Tipos de Protocolo Encapsulados en Swift

Los **tipos opacos** (`some`) y los **tipos de protocolo encapsulados** (`protocol as a type`) pueden parecer similares, pero tienen diferencias clave en rendimiento y uso.

## Comparación entre `some` y Protocolos Encapsulados

| Característica | `some` (Tipo Opaco) | Tipo de Protocolo Encapsulado (`protocol as a type`) |
|--------------|-----------------|--------------------------|
| Tipo en tiempo de compilación | Conocido | Desconocido |
| Optimización del compilador | Alta | Baja |
| Sobrecarga de memoria | Baja | Alta (Uso de heap) |
| Posibilidad de devolver múltiples tipos | No | Sí |
| Uso en colecciones | No | Sí |

## Ejemplo con Tipo Opaco (`some`)

```swift
protocol Shape {
    func area() -> Double
}

struct Circle: Shape {
    var radius: Double
    func area() -> Double {
        return .pi * radius * radius
    }
}

func makeOpaqueShape() -> some Shape {
    return Circle(radius: 5)
}
```

### Explicación:
- `some Shape` mantiene el tipo concreto (`Circle`) **en tiempo de compilación**.
- Swift puede **optimizar el código y evitar asignaciones en el heap**.

## Ejemplo con un Protocolo Encapsulado (`protocol as a type`)

```swift
func makeBoxedShape() -> Shape {
    return Circle(radius: 5)
}
```

### Explicación:
- La función devuelve `Shape`, pero Swift **no conoce el tipo exacto en tiempo de compilación**.
- **Se usa asignación dinámica de memoria (heap)**, lo que puede impactar el rendimiento.

## Cuándo Usar Cada Uno
- Usa **`some`** cuando el tipo exacto es importante y deseas optimización.
- Usa **protocolos encapsulados** cuando necesitas flexibilidad para devolver múltiples tipos que conforman el mismo protocolo.


