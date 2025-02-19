# Concurrencia No Estructurada

Swift permite el uso de concurrencia no estructurada mediante la creación de tareas independientes usando `Task` o `Task.detached()`. Estas tareas no están vinculadas al contexto en el que se crean, lo que otorga mayor flexibilidad pero requiere una gestión manual.

## Crear una Tarea Independiente con `Task`

Las tareas creadas con `Task` heredan el contexto del llamador, como la prioridad o la posibilidad de cancelación.

### Ejemplo de uso de `Task`

```swift
func ejecutarTarea() async {
    let tarea = Task {
        return "Tarea en ejecución"
    }
    
    let resultado = await tarea.value
    print(resultado)
}

Task {
    await ejecutarTarea()
}
```

### Salida esperada:
```
Tarea en ejecución
```

## Crear una Tarea Totalmente Independiente con `Task.detached()`

Cuando se usa `Task.detached()`, la tarea no hereda el contexto del llamador, lo que significa que tiene su propia prioridad y no puede ser cancelada por la tarea principal.

### Ejemplo de uso de `Task.detached()`

```swift
let tarea = Task.detached {
    return "Tarea completamente separada"
}

Task {
    let resultado = await tarea.value
    print(resultado)
}
```

### Salida esperada:
```
Tarea completamente separada
```

## Diferencias entre `Task` y `Task.detached()`
| Característica | `Task` | `Task.detached()` |
|--------------|-------|------------------|
| Hereda prioridad | ✅ Sí | ❌ No |
| Puede cancelarse desde la tarea principal | ✅ Sí | ❌ No |
| Accede al contexto del llamador | ✅ Sí | ❌ No |

## Cuándo Usar Concurrencia No Estructurada
- **`Task`**: Cuando necesitas una tarea asíncrona que herede el contexto del llamador.
- **`Task.detached()`**: Cuando necesitas una tarea completamente independiente sin heredar configuración del llamador.


