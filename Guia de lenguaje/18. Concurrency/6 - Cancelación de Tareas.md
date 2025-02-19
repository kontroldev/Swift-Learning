# Cancelación de Tareas

Swift permite cancelar tareas asíncronas de manera estructurada para optimizar el uso de recursos y evitar la ejecución innecesaria de código.

## Comprobar la Cancelación de una Tarea

Las tareas pueden comprobar si han sido canceladas usando `Task.isCancelled`. Si se detecta la cancelación, la función puede manejarla adecuadamente.

### Ejemplo de verificación de cancelación

```swift
func realizarTarea() async {
    for i in 1...5 {
        if Task.isCancelled {
            print("Tarea cancelada")
            return
        }
        print("Ejecutando paso \(i)")
        try? await Task.sleep(nanoseconds: 1_000_000_000)
    }
    print("Tarea completada")
}
```

## Cancelar una Tarea Manualmente

Puedes iniciar una tarea con `Task` y cancelarla usando su referencia.

### Ejemplo de cancelación manual

```swift
let tarea = Task {
    await realizarTarea()
}

Task.sleep(nanoseconds: 2_000_000_000) // Espera 2 segundos

tarea.cancel()
```

### Salida esperada:
```
Ejecutando paso 1
Ejecutando paso 2
Tarea cancelada
```

## Cancelar Tareas en `TaskGroup`

Cuando usas `TaskGroup`, las tareas hijas se cancelan automáticamente si el grupo es cancelado.

```swift
await withTaskGroup(of: Void.self) { group in
    group.addTask {
        if Task.isCancelled { return }
        print("Tarea en el grupo ejecutándose")
    }
    group.cancelAll()
}
```

## Conclusión
- `Task.isCancelled` permite detectar cuando una tarea ha sido cancelada.
- `Task.cancel()` detiene la ejecución de una tarea en progreso.
- `TaskGroup.cancelAll()` cancela todas las tareas dentro de un grupo.


