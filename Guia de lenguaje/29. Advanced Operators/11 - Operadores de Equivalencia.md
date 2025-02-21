# Operadores de Equivalencia en Swift

Los **operadores de equivalencia** en Swift permiten comparar objetos y valores para determinar si son iguales o no. Estos operadores son fundamentales en la toma de decisiones dentro del código.

## Tipos de Operadores de Equivalencia
1. **Igualdad (`==`)**: Retorna `true` si dos valores son iguales.
2. **Desigualdad (`!=`)**: Retorna `true` si dos valores son diferentes.

## Ejemplo de Uso
```swift
let a = 10
let b = 10
let c = 5

print(a == b) // true
print(a != c) // true
```

### Comparación de Tipos Personalizados
Swift permite la comparación de objetos personalizados mediante la implementación del protocolo `Equatable`:
```swift
struct Person: Equatable {
    let name: String
    let age: Int
}

let person1 = Person(name: "Raúl", age: 30)
let person2 = Person(name: "Raúl", age: 30)

print(person1 == person2) // true
```

## Beneficios de los Operadores de Equivalencia
✅ **Facilitan comparaciones en estructuras de datos.**  
✅ **Permiten definir igualdad en tipos personalizados.**  
✅ **Mejoran la legibilidad del código al hacer validaciones claras.**

