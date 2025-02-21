# El Problema que Resuelven los Tipos Opacos en Swift

Los **tipos opacos** en Swift solucionan el problema de devolver valores cuyo tipo exacto no necesita ser expuesto, pero que aún conforman un protocolo específico.

## Problema al Devolver Tipos de Protocolo

Las funciones pueden devolver valores conformes a un protocolo, pero esto impide que el compilador realice optimizaciones y asegura un tipo específico en la implementación.

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

### Problema:
- `makeShape()` devuelve un valor del tipo `Shape`, pero **el tipo exacto (`Circle`) se pierde**.
- Swift **no puede optimizar el código** porque el tipo de retorno es solo un protocolo.

Los **tipos opacos** (`some`) permiten devolver un tipo específico sin exponerlo públicamente.

