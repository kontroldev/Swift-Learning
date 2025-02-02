# Funciones Anidadas en Swift

En Swift, se pueden definir **funciones dentro de otras funciones**, lo que se conoce como **funciones anidadas**. Esto permite encapsular lógica auxiliar dentro de una función más grande, manteniendo el código más organizado y modular.

---

## ¿Qué son las Funciones Anidadas?

Las funciones anidadas son funciones declaradas dentro del cuerpo de otra función. Solo pueden ser utilizadas dentro de la función en la que están definidas, lo que ayuda a mantener la encapsulación del código.

### Sintaxis:
```swift
func funcionExterna() {
    func funcionAnidada() {
        print("Esta es una función anidada.")
    }
    
    funcionAnidada() // Se puede llamar dentro de la función externa
}

funcionExterna()
```

### Salida:
```
Esta es una función anidada.
```

En este ejemplo:
- `funcionAnidada` solo puede ser llamada dentro de `funcionExterna`.
- No es accesible fuera de `funcionExterna`.

---

## Ejemplo de Uso de Funciones Anidadas

Las funciones anidadas son útiles cuando una función auxiliar solo tiene sentido dentro de otra función.

```swift
func calcularPotencia(base: Int, exponente: Int) -> Int {
    func elevar(_ numero: Int, _ potencia: Int) -> Int {
        var resultado = 1
        for _ in 1...potencia {
            resultado *= numero
        }
        return resultado
    }
    
    return elevar(base, exponente)
}

print(calcularPotencia(base: 2, exponente: 3))
```

### Salida:
```
8
```

En este caso:
- `elevar` es una función anidada dentro de `calcularPotencia`.
- Se usa solo dentro de `calcularPotencia`, evitando exponerla innecesariamente.

---

## Funciones Anidadas como Valores de Retorno

Las funciones anidadas también pueden ser **devueltas como valores**.

### Ejemplo:
```swift
func obtenerIncrementador() -> (Int) -> Int {
    func incrementar(_ numero: Int) -> Int {
        return numero + 1
    }
    return incrementar
}

let incrementar = obtenerIncrementador()
print(incrementar(10))
```

### Salida:
```
11
```

Aquí:
- `obtenerIncrementador` devuelve la función `incrementar`.
- `incrementar(10)` usa la función anidada fuera de su contexto original.

---

## Comparación con Funciones Globales

| Característica | Funciones Anidadas | Funciones Globales |
|---------------|--------------------|--------------------|
| **Alcance** | Solo dentro de la función principal | Accesibles en todo el programa |
| **Encapsulación** | Evita exponer funciones auxiliares innecesarias | Puede aumentar la complejidad si hay muchas funciones pequeñas |
| **Retorno de funciones** | Puede devolver una función como valor | Normalmente se usan de manera independiente |

---

## Resumen

- **Las funciones anidadas ayudan a encapsular lógica auxiliar.**
- **No pueden ser accedidas fuera de la función principal.**
- **Pueden ser devueltas como valores para su uso posterior.**


