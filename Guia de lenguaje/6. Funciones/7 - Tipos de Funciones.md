# Tipos de Función en Swift

En Swift, las funciones tienen un **tipo de función** que describe los tipos de sus parámetros y su valor de retorno. Esto permite asignar funciones a variables, usarlas como argumentos y retornarlas desde otras funciones.

---

## ¿Qué es un Tipo de Función?

El **tipo de función** está determinado por:
- Los tipos de los parámetros.
- El tipo de retorno (si lo hay).

### Sintaxis:
```swift
(TipoParametro1, TipoParametro2) -> TipoDeRetorno
```

Si una función no devuelve un valor, su tipo de retorno es `Void`.

```swift
(TipoParametro1, TipoParametro2) -> Void
```

---

## Ejemplo de Tipo de Función

```swift
func sumar(a: Int, b: Int) -> Int {
    return a + b
}

let operacion: (Int, Int) -> Int = sumar
print(operacion(3, 4))
```

### Salida:
```
7
```

En este ejemplo:
- `sumar` tiene el tipo de función `(Int, Int) -> Int`.
- Se asigna a `operacion`, que puede usarse como cualquier variable.
- Luego, `operacion(3, 4)` ejecuta `sumar`.

---

## Funciones sin Retorno

Si una función no devuelve un valor, su tipo de función usa `Void`.

### Ejemplo:
```swift
func mostrarMensaje() {
    print("¡Hola, Swift!")
}

let mensaje: () -> Void = mostrarMensaje
mensaje()
```

### Salida:
```
¡Hola, Swift!
```

---

## Uso de Tipos de Función como Parámetros

Una función puede aceptar otra función como parámetro.

### Ejemplo:
```swift
func operarSobreNumeros(_ a: Int, _ b: Int, operacion: (Int, Int) -> Int) -> Int {
    return operacion(a, b)
}

let resultado = operarSobreNumeros(10, 5, sumar)
print(resultado)
```

### Salida:
```
15
```

---

## Funciones como Valores de Retorno

Las funciones también pueden devolver otras funciones.

### Ejemplo:
```swift
func elegirOperacion(_ sumar: Bool) -> (Int, Int) -> Int {
    return sumar ? (+) : (-)
}

let operacionSeleccionada = elegirOperacion(true)
print(operacionSeleccionada(8, 3))
```

### Salida:
```
11
```

---

## Resumen

| Concepto                 | Ejemplo |
|--------------------------|---------|
| **Tipo de función**      | `(Int, Int) -> Int` |
| **Funciones sin retorno** | `() -> Void` |
| **Funciones como parámetros** | `func operar(_ a: Int, _ b: Int, f: (Int, Int) -> Int) -> Int` |
| **Funciones como retorno** | `func obtenerOperacion() -> (Int, Int) -> Int` |

---

## Conclusión

- Swift trata las funciones como **valores de primera clase**, lo que permite asignarlas a variables, pasarlas como argumentos y devolverlas desde otras funciones.
- Usar tipos de función mejora la modularidad y flexibilidad del código.

