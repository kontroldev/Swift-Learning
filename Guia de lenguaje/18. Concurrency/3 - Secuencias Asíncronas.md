# Secuencias Asíncronas

Swift proporciona `AsyncSequence` y `AsyncIteratorProtocol` para manejar secuencias de valores que se generan de forma asíncrona. Esto es útil cuando los valores llegan con el tiempo, como en flujos de datos o eventos en red.

## Definiendo una Secuencia Asíncrona

Para crear una secuencia asíncrona, una estructura debe conformarse a `AsyncSequence` e implementar un iterador compatible con `AsyncIteratorProtocol`.

```swift
struct ContadorAsincrono: AsyncSequence {
    typealias Element = Int
    let limite: Int
    
    struct Iterador: AsyncIteratorProtocol {
        var actual = 0
        let limite: Int
        
        mutating func next() async -> Int? {
            guard actual < limite else { return nil }
            actual += 1
            return actual
        }
    }
    
    func makeAsyncIterator() -> Iterador {
        return Iterador(actual: 0, limite: limite)
    }
}
```

## Consumir una Secuencia Asíncrona

Para iterar sobre una `AsyncSequence`, se usa `for await` en un contexto asíncrono.

```swift
Task {
    for await numero in ContadorAsincrono(limite: 5) {
        print(numero)
    }
}
```

### Salida esperada:
```
1
2
3
4
5
```

## Beneficios de `AsyncSequence`
- **Optimizado para procesamiento en segundo plano**
- **Mejora la legibilidad y el control de flujo**
- **Ideal para recibir datos de forma progresiva**

