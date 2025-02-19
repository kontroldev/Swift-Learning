# Especificar Acciones de Limpieza

Swift proporciona la declaración `defer` para ejecutar un conjunto de instrucciones justo antes de que la ejecución salga del ámbito actual. Esto es útil para asegurarse de que se realicen tareas de limpieza necesarias, como cerrar archivos o liberar recursos.

## Uso de `defer`

Un bloque `defer` se ejecuta en orden inverso a su aparición cuando el ámbito se abandona, ya sea por ejecución normal o por un error lanzado.

### Ejemplo 1: Uso básico de `defer`

```swift
func procesarArchivo() throws {
    print("Abriendo archivo")
    defer {
        print("Cerrando archivo")
    }
    
    print("Leyendo contenido del archivo")
    // Si ocurre un error aquí, `defer` aún garantiza la limpieza
}

try? procesarArchivo()
```

**Salida:**
```
Abriendo archivo
Leyendo contenido del archivo
Cerrando archivo
```

### Ejemplo 2: Múltiples declaraciones `defer`

Cuando hay múltiples declaraciones `defer`, se ejecutan en orden inverso (LIFO - Last In, First Out).

```swift
func multiplesDefers() {
    defer { print("Primer defer") }
    defer { print("Segundo defer") }
    defer { print("Tercer defer") }
    print("Cuerpo de la función")
}

multiplesDefers()
```

**Salida:**
```
Cuerpo de la función
Tercer defer
Segundo defer
Primer defer
```

### Ejemplo 3: `defer` en Manejo de Errores

Incluso si ocurre un error, los bloques `defer` aún se ejecutarán antes de salir de la función.

```swift
enum ErrorDeArchivo: Error {
    case archivoNoEncontrado
}

func cargarDatos() throws {
    defer { print("Liberando recursos") }
    throw ErrorDeArchivo.archivoNoEncontrado
}

do {
    try cargarDatos()
} catch {
    print("Error ocurrido: \(error)")
}
```

**Salida:**
```
Liberando recursos
Error ocurrido: archivoNoEncontrado
```

## Conclusiones
- `defer` garantiza que las acciones de limpieza se ejecuten antes de salir de un ámbito.
- Múltiples bloques `defer` se ejecutan en orden inverso.
- `defer` se ejecuta incluso si se lanza un error.

