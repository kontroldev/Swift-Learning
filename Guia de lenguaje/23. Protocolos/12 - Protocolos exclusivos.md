# Protocolos Exclusivos para Clases en Swift

En Swift, puedes restringir un protocolo para que solo sea adoptado por **clases**, evitando su uso en estructuras (`struct`) y enumeraciones (`enum`). Esto se logra utilizando la restricción `AnyObject`.

## Definir un Protocolo Exclusivo para Clases

Para indicar que un protocolo solo puede ser adoptado por clases, se usa `AnyObject` después del nombre del protocolo:

```swift
protocol ClassOnlyProtocol: AnyObject {
    func someMethod()
}
```

### Explicación
- `ClassOnlyProtocol` solo puede ser adoptado por clases debido a la restricción `AnyObject`.

### Ejemplo: Implementación en una Clase

```swift
class SomeClass: ClassOnlyProtocol {
    func someMethod() {
        print("Método implementado en una clase")
    }
}

let instance = SomeClass()
instance.someMethod()
```

### Salida esperada
```
Método implementado en una clase
```

## Beneficios de los Protocolos Exclusivos para Clases
- **Evita copias innecesarias**: Las estructuras (`struct`) y enumeraciones (`enum`) son tipos de valor, mientras que las clases son tipos de referencia. Restringir el protocolo a clases evita problemas relacionados con copias de valores.
- **Permite referencias débiles (`weak`)**: Dado que las estructuras no admiten referencias `weak`, los protocolos restringidos a clases pueden utilizar esta funcionalidad para evitar ciclos de retención en la gestión de memoria.

