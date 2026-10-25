# Actores en Swift

Los **actores** en Swift son una característica de concurrencia diseñada para proteger el acceso a los datos compartidos y evitar condiciones de carrera. Funcionan de manera similar a las clases, pero garantizan la ejecución segura del código en entornos concurrentes.

## Definir un Actor

Un actor se define utilizando la palabra clave `actor` y encapsula datos para garantizar que solo una tarea acceda a ellos a la vez.

```swift
actor Contador {
    private var valor = 0
    
    func incrementar() {
        valor += 1
    }
    
    func obtenerValor() -> Int {
        return valor
    }
}
```

## Acceder a Propiedades y Métodos de un Actor

Desde fuera de su aislamiento, el acceso a sus miembros aislados normalmente requiere `await`. Dentro de un método del mismo actor, acceder a su estado no requiere `await`.

```swift
let contador = Contador()

Task {
    await contador.incrementar()
    let valor = await contador.obtenerValor()
    print("Valor actual: \(valor)")
}
```

### Salida esperada:
```
Valor actual: 1
```

## Protección de Datos Compartidos

Los actores serializan el acceso a su estado aislado y ayudan a evitar carreras de datos. Esto no significa que un método asíncrono se ejecute de principio a fin sin interrupciones.

### Reentrancia: cuidado después de `await`

Cuando un método de un actor se suspende en un `await`, otra tarea puede ejecutar código en ese actor y modificar su estado antes de que el método original continúe. Por eso, comprueba de nuevo las condiciones que dependan del estado después de la suspensión. Los actores protegen contra carreras de datos, pero no garantizan por sí solos que una operación de varios pasos sea atómica.

## Comparación entre Clases y Actores

| Característica | Clase | Actor |
|--------------|-------|-------|
| Protege datos concurrentes | ❌ No | ✅ Sí |
| Acceso a miembros aislados desde fuera | Depende de su aislamiento | Generalmente requiere `await` |
| Uso de herencia | ✅ Sí | ❌ No |

## Cuándo Usar Actores
- Cuando varias tareas acceden y modifican los mismos datos de forma concurrente.
- Para evitar condiciones de carrera sin necesidad de bloqueos manuales.
- Cuando se necesita garantizar un acceso seguro a los recursos compartidos.

