# Tipos de Protocolo Encapsulados en Swift

Los **tipos de protocolo encapsulados** (`Boxed Protocol Types`) se refieren a situaciones en las que se usa un tipo de protocolo como `Any` o `AnyObject`, lo que puede introducir sobrecarga en tiempo de ejecución.

## Uso de Tipos de Protocolo Encapsulados

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

func makeShape() -> Shape {
    return Circle(radius: 5)
}
```

### Explicación:
- `makeShape()` devuelve `Shape`, pero como **un protocolo sin especificar el tipo exacto**, incurriendo en **costos de asignación de memoria dinámica**.
- Esto es menos eficiente que un tipo opaco (`some Shape`), ya que **Swift no conoce el tipo en tiempo de compilación**.

## Diferencia con los Tipos Opacos
```swift
func makeOpaqueShape() -> some Shape {
    return Circle(radius: 5)
}
```

- `some Shape` permite que el compilador **mantenga la información de tipo**, mejorando la eficiencia.
- Evita la sobrecarga de memoria de los tipos de protocolo encapsulados.

## Cuándo Usar Tipos de Protocolo Encapsulados
- **Cuando se necesita flexibilidad para devolver múltiples tipos conformes a un mismo protocolo**.
- **Si el tipo concreto no es importante y solo importa la conformidad al protocolo**.
- **Cuando el código requiere compatibilidad con APIs que usan protocolos genéricos**.

