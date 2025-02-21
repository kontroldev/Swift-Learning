# Delegación en Swift

La **delegación** es un patrón de diseño en Swift que permite que una clase o estructura delegue parte de su funcionalidad a otra instancia. Esto se logra mediante el uso de **protocolos**.

## Implementación de la Delegación

Para usar la delegación en Swift, se siguen estos pasos:
1. **Definir un protocolo** que establezca los métodos que el delegado debe implementar.
2. **Crear una propiedad delegada** en la clase que delega el trabajo.
3. **Hacer que otra clase conforme al protocolo** y proporcione una implementación para los métodos requeridos.

### Ejemplo: Implementación de Delegación

```swift
protocol PrinterDelegate {
    func printMessage()
}

class Printer {
    var delegate: PrinterDelegate?
    
    func startPrinting() {
        delegate?.printMessage()
    }
}

class MessagePrinter: PrinterDelegate {
    func printMessage() {
        print("Imprimiendo un mensaje...")
    }
}

let printer = Printer()
let messagePrinter = MessagePrinter()
printer.delegate = messagePrinter
printer.startPrinting()
```

### Explicación
- Se define el protocolo `PrinterDelegate` con el método `printMessage()`.
- `Printer` tiene una propiedad `delegate` que puede contener cualquier objeto que conforme al protocolo.
- `MessagePrinter` adopta el protocolo e implementa el método requerido.
- Se establece `messagePrinter` como delegado de `printer` y se llama a `startPrinting()`.

### Salida esperada
```
Imprimiendo un mensaje...
```

## Beneficios del Uso de la Delegación
- **Promueve la reutilización del código** al permitir que diferentes clases manejen comportamientos específicos.
- **Facilita la separación de responsabilidades**, haciendo que cada clase se enfoque en una tarea específica.
- **Permite una comunicación flexible entre objetos** sin crear dependencias rígidas.
