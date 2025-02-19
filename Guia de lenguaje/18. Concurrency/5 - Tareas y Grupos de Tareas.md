# Tareas y Grupos de Tareas

Swift proporciona `Task` y `TaskGroup` para gestionar la concurrencia de manera eficiente, permitiendo ejecutar múltiples tareas de manera estructurada.

## Uso de `Task`

Una `Task` permite ejecutar código asíncrono en segundo plano. Se usa para iniciar tareas independientes desde un entorno síncrono o asíncrono.

### Ejemplo de `Task`

```swift
Task {
    let resultado = await realizarTrabajo()
    print(resultado)
}

func realizarTrabajo() async -> String {
    return "Trabajo completado"
}
```

## Uso de `TaskGroup`

`TaskGroup` permite ejecutar múltiples tareas en paralelo dentro de una estructura organizada y esperar sus resultados de forma eficiente.

### Ejemplo de `TaskGroup`

```swift
import Foundation

func procesarTareas() async {
    await withTaskGroup(of: String.self) { group in
        group.addTask {
            return await tareaUno()
        }
        group.addTask {
            return await tareaDos()
        }
        
        for await resultado in group {
            print(resultado)
        }
    }
}

func tareaUno() async -> String {
    return "Tarea 1 completada"
}

func tareaDos() async -> String {
    return "Tarea 2 completada"
}

Task {
    await procesarTareas()
}
```

### Salida esperada:
```
Tarea 1 completada
Tarea 2 completada
```

## Beneficios de `Task` y `TaskGroup`
- **`Task`** es ideal para iniciar tareas independientes sin bloquear el código principal.
- **`TaskGroup`** permite gestionar múltiples tareas en paralelo y manejar sus resultados de manera estructurada.
- Ambas opciones permiten optimizar el rendimiento de tareas concurrentes.


