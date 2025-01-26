# For-In Loops en Swift

El bucle `for-in` es una herramienta poderosa en Swift que permite iterar sobre colecciones, rangos, cadenas o diccionarios de manera sencilla.

---

## Sintaxis

```swift
for elemento in secuencia {
    // Código a ejecutar
}
```

Donde:
- **`elemento`**: Representa el valor actual en cada iteración.
- **`secuencia`**: Puede ser un array, rango, cadena, diccionario u otro tipo de colección.

---

## Iterar sobre un Array

```swift
let nombres = ["Ana", "Luis", "María"]

for nombre in nombres {
    print("Hola, \(nombre)!")
}
```

### Salida:
```
Hola, Ana!
Hola, Luis!
Hola, María!
```

En este ejemplo, `nombre` toma el valor de cada elemento del array `nombres` en cada iteración.

---

## Iterar sobre un Rango

```swift
for numero in 1...5 {
    print("El número es \(numero)")
}
```

### Salida:
```
El número es 1
El número es 2
El número es 3
El número es 4
El número es 5
```

Aquí, el bucle recorre los números del `1` al `5`, incluyendo ambos extremos.

---

## Iterar sobre una Cadena

```swift
let mensaje = "Swift"

for caracter in mensaje {
    print(caracter)
}
```

### Salida:
```
S
w
i
f
t
```

Cada carácter de la cadena `mensaje` se itera como un `Character`.

---

## Iterar sobre un Diccionario

```swift
let edades = ["Ana": 28, "Luis": 35]

for (nombre, edad) in edades {
    print("\(nombre) tiene \(edad) años.")
}
```

### Salida:
```
Ana tiene 28 años.
Luis tiene 35 años.
```

Los diccionarios en Swift permiten iterar sobre pares clave-valor utilizando una tupla.

---

## Ignorar el Valor Iterado

Si no necesitas el valor actual durante la iteración, puedes usar `_` para ignorarlo:

```swift
for _ in 1...3 {
    print("¡Swift es genial!")
}
```

### Salida:
```
¡Swift es genial!
¡Swift es genial!
¡Swift es genial!
```

Esto es útil para repetir una acción un número fijo de veces.

---

## Resumen de Usos

- **Arrays**: Ideal para recorrer listas ordenadas.
- **Rangos**: Perfecto para números consecutivos.
- **Cadenas**: Útil para trabajar con caracteres individuales.
- **Diccionarios**: Permite manejar pares clave-valor.

---

