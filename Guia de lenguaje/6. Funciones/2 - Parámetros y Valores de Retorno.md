# Parámetros y Valores de Retorno en Swift

En Swift, las funciones pueden recibir **parámetros** y devolver **valores de retorno**. Esto permite reutilizar código y hacerlo más flexible.

---

## Funciones con Parámetros

Los **parámetros** permiten que las funciones reciban valores externos al momento de ser llamadas.

### Sintaxis:

```swift
func nombreDeLaFuncion(parametro1: Tipo, parametro2: Tipo) {
    // Código que usa los parámetros
}
```

### Ejemplo:

```swift
func saludar(nombre: String) {
    print("¡Hola, \(nombre)!")
}

saludar(nombre: "Swift")
```

### Salida:
```
¡Hola, Swift!
```

---

## Funciones con Valores de Retorno

Las funciones pueden devolver un valor usando la palabra clave `return`.

### Sintaxis:

```swift
func nombreDeLaFuncion() -> TipoDeRetorno {
    return valor
}
```

### Ejemplo:

```swift
func sumar(a: Int, b: Int) -> Int {
    return a + b
}

let resultado = sumar(a: 4, b: 6)
print(resultado)
```

### Salida:
```
10
```

---

## Funciones sin Retorno

No todas las funciones necesitan devolver un valor. Se pueden usar solo para ejecutar acciones.

### Ejemplo:

```swift
func mostrarMensaje() {
    print("Bienvenido a Swift!")
}

mostrarMensaje()
```

### Salida:
```
Bienvenido a Swift!
```

---

## Funciones con Múltiples Valores de Retorno

Swift permite devolver varios valores usando **tuplas**.

### Ejemplo:

```swift
func calcularMinMax(numeros: [Int]) -> (min: Int, max: Int) {
    let min = numeros.min() ?? 0
    let max = numeros.max() ?? 0
    return (min, max)
}

let resultado = calcularMinMax(numeros: [2, 8, 1, 6])
print("Mínimo: \(resultado.min), Máximo: \(resultado.max)")
```

### Salida:
```
Mínimo: 1, Máximo: 8
```

---

## Resumen

| Aspecto                   | Descripción |
|---------------------------|-------------|
| **Parámetros**            | Se usan para recibir valores en la función. |
| **Valores de retorno**    | Se devuelven con `return` para ser usados después. |
| **Tuplas en retorno**     | Permiten devolver múltiples valores al mismo tiempo. |


