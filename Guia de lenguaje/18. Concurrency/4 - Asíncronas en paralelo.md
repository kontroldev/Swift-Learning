# Llamar Funciones Asíncronas en Paralelo

Swift permite ejecutar múltiples funciones asíncronas en paralelo utilizando `async let`. Esto mejora el rendimiento al aprovechar la ejecución concurrente de tareas independientes.

## Uso de `async let`

Al declarar una variable con `async let`, se inicia su ejecución en segundo plano mientras el código continúa ejecutándose sin esperarla de inmediato.

### Ejemplo de ejecución en paralelo

```swift
func tareaUno() async -> String {
    return "Tarea 1 completada"
}

func tareaDos() async -> String {
    return "Tarea 2 completada"
}

func ejecutarEnParalelo() async {
    async let resultadoUno = tareaUno()
    async let resultadoDos = tareaDos()
    
    let (uno, dos) = await (resultadoUno, resultadoDos)
    print(uno)
    print(dos)
}

Task {
    await ejecutarEnParalelo()
}
```

### Salida esperada:
```
Tarea 1 completada
Tarea 2 completada
```

## Beneficios de `async let`
- Permite la ejecución simultánea de múltiples funciones asíncronas.
- Mejora el rendimiento al evitar bloqueos innecesarios.
- Se recomienda cuando las tareas no dependen entre sí.

## Consideraciones
- `async let` solo se puede usar dentro de una función `async`.
- Debes usar `await` antes de acceder a los valores almacenados en `async let`.

