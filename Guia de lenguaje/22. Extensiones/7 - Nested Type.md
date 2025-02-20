# Tipos Anidados en Extensiones en Swift

Swift permite agregar **tipos anidados** dentro de extensiones, lo que facilita la organización del código y la encapsulación de funcionalidades relacionadas sin modificar la implementación original del tipo.

## Definiendo un Tipo Anidado en una Extensión

A continuación, se muestra cómo agregar una enumeración anidada dentro de una extensión:

```swift
extension Int {
    enum Paridad {
        case par, impar
    }
    
    var tipo: Paridad {
        return self % 2 == 0 ? .par : .impar
    }
}

let numero = 7
print("El número \(numero) es \(numero.tipo)")
```

### Explicación
- Se define una enumeración `Paridad` dentro de la extensión de `Int`.
- Se agrega una propiedad computada `tipo` que devuelve `.par` o `.impar` según el valor del número.

### Salida esperada
```
El número 7 es impar
```

## Beneficios de Usar Tipos Anidados en Extensiones
- **Organización del código**: Mantiene estructuras relacionadas dentro de un mismo contexto.
- **Evita conflictos de nombres**: Se encapsulan tipos dentro de una extensión específica.
- **Mejora la modularidad**: Permite extender tipos con nuevas funcionalidades de manera estructurada.

