# Parámetros Variádicos en Swift

En Swift, una función puede aceptar un número variable de argumentos del mismo tipo utilizando **parámetros variádicos**. Esto permite a la función manejar múltiples valores sin necesidad de definir un número fijo de parámetros.

---

## ¿Qué son los Parámetros Variádicos?

Un **parámetro variádico** permite que una función acepte **cero o más valores** del mismo tipo. Se define agregando `...` después del tipo de parámetro.

### Sintaxis:

```swift
func nombreDeLaFuncion(parametro: Tipo...) {
    // Código que usa el parámetro como una colección
}
```

---

## Ejemplo de Parámetro Variádico

```swift
func sumarNumeros(_ numeros: Int...) -> Int {
    return numeros.reduce(0, +)
}

print(sumarNumeros(1, 2, 3, 4, 5))
```

### Salida:
```
15
```

En este ejemplo:
- `numeros` es un **parámetro variádico** que puede recibir múltiples valores enteros.
- Se usa `reduce(0, +)` para sumar todos los valores dentro del parámetro variádico.

---

## Accediendo a los Parámetros Variádicos

Swift trata los valores de un parámetro variádico como una **colección** (`Array`). Puedes recorrerlos con un bucle `for`.

### Ejemplo:

```swift
func mostrarNombres(_ nombres: String...) {
    for nombre in nombres {
        print("Hola, \(nombre)")
    }
}

mostrarNombres("Ana", "Carlos", "María")
```

### Salida:
```
Hola, Ana
Hola, Carlos
Hola, María
```

---

## Restricciones de los Parámetros Variádicos

- **Solo puede haber un parámetro variádico** en una función.
- **Debe estar al final de la lista de parámetros**, para evitar ambigüedades en la llamada de la función.

### Ejemplo Incorrecto:
```swift
func incorrecto(a: Int..., b: Int) { } // ❌ Error: no puede haber otro parámetro después de un variádico
```

### Ejemplo Correcto:
```swift
func correcto(a: Int, b: Int...) { } // ✅ Válido porque el variádico es el último
```

---

## Comparación entre Parámetros Fijos y Variádicos

| Tipo de Parámetro    | Definición | Uso |
|----------------------|------------|-----------|
| **Fijo**             | `func sumar(a: Int, b: Int)` | Cuando se conoce el número exacto de argumentos. |
| **Variádico**        | `func sumar(_ numeros: Int...)` | Cuando se necesita manejar múltiples valores sin límite fijo. |

---

## Resumen

- Usa **parámetros variádicos** cuando una función necesita aceptar un número indeterminado de valores del mismo tipo.
- Se accede a los valores como si fueran un **Array**.
- **Solo puede haber un parámetro variádico** y debe ser el último en la lista de parámetros.


