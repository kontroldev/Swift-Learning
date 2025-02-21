# Devolviendo un Tipo Opaco en Swift

En Swift, los **tipos opacos** (`some`) permiten devolver valores sin revelar su tipo exacto, pero asegurando que conforman un protocolo específico.

## Uso de `some` para Devolver un Tipo Opaco

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

func makeCircle() -> some Shape {
    return Circle(radius: 5)
}
```

### Explicación:
- `some Shape` indica que la función devuelve **un tipo concreto que conforma `Shape`**, sin exponer cuál.
- Esto **preserva la información de tipo interna**, permitiendo optimizaciones del compilador.
- La llamada `makeCircle()` devuelve una instancia de `Circle`, pero el código externo solo sabe que es `Shape`.

## Beneficios de los Tipos Opacos
- **Ocultan la implementación interna**, manteniendo la encapsulación.
- **Permiten el uso de tipos específicos sin exponerlos públicamente**.
- **Facilitan la optimización del compilador** al mantener un tipo concreto.

