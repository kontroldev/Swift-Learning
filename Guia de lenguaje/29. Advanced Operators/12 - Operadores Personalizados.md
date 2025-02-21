# Operadores Personalizados en Swift

Swift permite definir **operadores personalizados**, lo que permite crear nuevas operaciones adaptadas a necesidades específicas dentro del código.

## Definición de un Operador Personalizado
Para definir un operador personalizado, se debe:
1. Declarar el operador utilizando `prefix`, `postfix` o `infix`.
2. Implementarlo como un método estático en un tipo.

### Ejemplo: Definiendo un Operador Personalizado
```swift
infix operator **

struct Vector2D {
    var x: Double
    var y: Double
    
    static func ** (left: Vector2D, right: Vector2D) -> Double {
        return (left.x * right.x) + (left.y * right.y)
    }
}

let v1 = Vector2D(x: 3, y: 4)
let v2 = Vector2D(x: 2, y: 1)
let dotProduct = v1 ** v2  // Resultado: 10.0
```

### Explicación:
- Se define `**` como un operador infijo para calcular el producto punto de dos vectores.
- Se usa dentro de `Vector2D` para operar sobre instancias de esta estructura.

## Beneficios de los Operadores Personalizados
✅ **Mejora la expresividad del código.**  
✅ **Permite adaptar el lenguaje a dominios específicos.**  
✅ **Facilita cálculos matemáticos y estructuras de datos personalizadas.**

