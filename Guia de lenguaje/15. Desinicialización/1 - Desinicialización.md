# Cómo Funciona la Desinicialización en Swift

En Swift, la **desinicialización** se utiliza para limpiar instancias de clase cuando se eliminan de la memoria. Se define con `deinit` y solo está disponible en **clases**, ya que las estructuras y enumeraciones son tipos de valor y no requieren desinicializadores.

## Definiendo un Desinicializador

Un desinicializador se ejecuta automáticamente antes de que una instancia de una clase sea liberada de la memoria.

```swift
class FileManager {
    let fileName: String
    
    init(fileName: String) {
        self.fileName = fileName
        print("\(fileName) abierto")
    }
    
    deinit {
        print("\(fileName) cerrado")
    }
}

var manager: FileManager? = FileManager(fileName: "document.txt")
manager = nil // "document.txt cerrado"
```

## Cómo Funciona la Desinicialización

- Se llama a `deinit` cuando no hay más referencias a la instancia de la clase.
- Se ejecuta automáticamente antes de que el objeto sea eliminado de la memoria.
- No puede recibir parámetros y se define sin paréntesis `deinit {}`.

## Cuándo Usar Desinicialización

- Para liberar recursos manualmente como archivos abiertos, conexiones de red o memoria asignada.
- Para depurar la liberación de objetos en memoria.
- Para realizar tareas de limpieza antes de la eliminación de una instancia.

---

Este documento explica cómo funciona la **desinicialización en Swift** y cuándo es útil en el desarrollo de aplicaciones.
