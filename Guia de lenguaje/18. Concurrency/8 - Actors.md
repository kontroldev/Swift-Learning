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

El acceso a los métodos y propiedades de un actor debe realizarse de manera asíncrona utilizando `await`.

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

Los actores aseguran que los datos internos solo sean accedidos por una tarea a la vez, evitando condiciones de carrera sin necesidad de bloqueos manuales.

## Comparación entre Clases y Actores

| Característica | Clase | Actor |
|--------------|-------|-------|
| Protege datos concurrentes | ❌ No | ✅ Sí |
| Acceso asíncrono necesario | ❌ No | ✅ Sí |
| Uso de herencia | ✅ Sí | ❌ No |

## Cuándo Usar Actores
- Cuando varias tareas acceden y modifican los mismos datos de forma concurrente.
- Para evitar condiciones de carrera sin necesidad de bloqueos manuales.
- Cuando se necesita garantizar un acceso seguro a los recursos compartidos.

