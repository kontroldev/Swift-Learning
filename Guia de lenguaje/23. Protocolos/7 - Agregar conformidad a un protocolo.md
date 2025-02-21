# Agregar Conformidad a un Protocolo con una Extensión en Swift

Swift permite agregar conformidad a un protocolo en una **extensión**, lo que permite estructurar el código de forma más organizada sin modificar la definición original de un tipo.

## Implementación de Conformidad a un Protocolo mediante Extensiones

Al agregar conformidad a un protocolo en una extensión, se mantiene la implementación original separada de las nuevas funcionalidades, lo que mejora la legibilidad y modularidad del código.

### Ejemplo: Agregar Conformidad a un Protocolo en una Extensión

```swift
protocol TextRepresentable {
    var textualDescription: String { get }
}

struct Animal {
    let name: String
    let species: String
}

extension Animal: TextRepresentable {
    var textualDescription: String {
        return "\(name) es un \(species)"
    }
}

let dog = Animal(name: "Rex", species: "perro")
print(dog.textualDescription)
```

### Explicación
- Se define el protocolo `TextRepresentable` con una propiedad `textualDescription`.
- `Animal` es una estructura sin conformidad inicial a ningún protocolo.
- Se usa una **extensión** para hacer que `Animal` conforme al protocolo `TextRepresentable`.
- Se accede a la propiedad `textualDescription` en una instancia de `Animal`.

### Salida esperada
```
Rex es un perro
```

## Beneficios de Agregar Conformidad a Protocolos con Extensiones
- **Separa la lógica de conformidad**, mejorando la claridad del código.
- **Permite extender tipos existentes sin modificarlos directamente**.
- **Hace el código más modular y reutilizable**.


