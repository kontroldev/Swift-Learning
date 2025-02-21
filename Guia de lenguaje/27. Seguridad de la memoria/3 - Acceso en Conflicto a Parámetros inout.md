# Acceso en Conflicto a Parámetros `inout` en Swift

Swift evita conflictos de acceso a la memoria cuando se usan parámetros `inout`. Un **conflicto de acceso** ocurre si dos accesos al mismo valor `inout` se superponen en el tiempo y al menos uno de ellos es de escritura.

## Ejemplo de Acceso en Conflicto con `inout`
El siguiente código genera un **conflicto de acceso**:

```swift
var stepSize = 1

func increment(_ number: inout Int) {
    number += stepSize
}

increment(&stepSize) // ERROR: Conflicto de acceso a memoria
```

### Explicación:
- La función `increment(_:)` intenta **modificar `stepSize` mientras lo lee**, lo que genera un **acceso en conflicto**.
- Swift detecta el problema y evita el acceso simultáneo a la memoria.

## Cómo Evitar Conflictos con `inout`
Para evitar estos conflictos, se recomienda **hacer una copia local del valor antes de modificarlo**:

```swift
var stepSize = 1

func increment(_ number: inout Int) {
    let copy = stepSize // Copia local
    number += copy
}

increment(&stepSize) // Ahora es seguro
```

## Restricciones de `inout` para Prevenir Conflictos
1. **No se puede pasar la misma variable dos veces como `inout`**:
   
   ```swift
   func balance(_ x: inout Int, _ y: inout Int) {
       let total = x + y
       x = total / 2
       y = total - x
   }
   
   var num = 10
   // balance(&num, &num) // ERROR: Conflicto de acceso
   ```
   
   En este caso, **Swift no permite que `num` se pase dos veces a `balance`**, ya que causaría un conflicto.

2. **Acceso prolongado a `inout`**:
   - Un parámetro `inout` mantiene un acceso prolongado a la memoria **hasta que la función retorna**.
   - Esto impide modificar la misma variable en paralelo.

## Beneficios de la Seguridad con `inout`
- **Previene errores difíciles de depurar**.
- **Evita accesos en conflicto**, reduciendo el riesgo de comportamiento indefinido.
- **Mejora la optimización del código y la ejecución segura**.


