# Introducción a las Funciones en Swift

En Swift, las **funciones** permiten encapsular lógica reutilizable en bloques de código. Son esenciales para estructurar programas de manera eficiente, evitando la repetición y mejorando la claridad y mantenibilidad del código.

---

## ¿Qué son las Funciones?

Las funciones son fragmentos de código que realizan una tarea específica y pueden ser reutilizados en diferentes partes del programa.

### Sintaxis básica:

```swift
func nombreDeLaFuncion() {
    // Código a ejecutar
}
```

### Ejemplo:

```swift
func saludar() {
    print("¡Hola, Swift!")
}

saludar()
```

### Salida:
```
¡Hola, Swift!
```

---

## Funciones con Parámetros y Valores de Retorno

Las funciones pueden recibir **parámetros** (valores de entrada) y devolver un **valor de salida**.

### 1. **Funciones con Parámetros**

Los parámetros permiten personalizar la ejecución de una función.

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

En este ejemplo:
- La función `saludar` toma un parámetro llamado `nombre` de tipo `String`.
- El valor del parámetro se utiliza dentro del cuerpo de la función.

---

### 2. **Funciones con Retorno de Valor**

Las funciones pueden devolver un valor utilizando la palabra clave `return`.

```swift
func sumar(a: Int, b: Int) -> Int {
    return a + b
}

let resultado = sumar(a: 5, b: 3)
print(resultado)
```

### Salida:
```
8
```

En este caso:
- La función `sumar` toma dos enteros como parámetros (`a` y `b`) y devuelve su suma.
- El tipo de retorno (`Int`) se especifica después del símbolo `->`.

---

## Diferencias entre Funciones con y sin Retorno

| Aspecto                | Función sin Retorno                | Función con Retorno                |
|------------------------|-----------------------------------|-----------------------------------|
| **Definición**         | `func nombre() { }`               | `func nombre() -> Tipo { }`       |
| **Uso**                | Ejecuta código sin devolver nada  | Retorna un valor para su uso posterior |
| **Ejemplo**            | `func mostrar() { print("Swift") }` | `func obtenerNumero() -> Int { return 42 }` |

---

## Resumen

- Usa **funciones sin retorno** cuando solo necesitas ejecutar código.
- Usa **funciones con retorno** cuando necesitas devolver valores para su uso posterior.
- Declara parámetros para personalizar la ejecución de la función según tus necesidades.

