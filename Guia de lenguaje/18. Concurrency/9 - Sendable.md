# Tipos Sendable en Swift

En Swift, el protocolo `Sendable` garantiza que los valores de un tipo puedan ser usados de manera segura en entornos concurrentes. Esto es esencial para evitar condiciones de carrera cuando los datos se comparten entre tareas simultáneas.

## Declarar un Tipo `Sendable`

`Sendable` describe valores que pueden cruzar dominios de aislamiento de forma segura. Algunas conformidades pueden inferirse; en otros casos se declaran explícitamente.

```swift
struct Usuario: Sendable {
    let nombre: String
    let edad: Int
}
```

Swift comprueba que las propiedades almacenadas tengan tipos seguros para el envío. Una estructura con propiedades `var` también puede ser `Sendable` si sus tipos lo son.

## Clases y `Sendable`

Una clase ordinaria con conformidad comprobada suele necesitar ser `final` y tener propiedades almacenadas constantes de tipos `Sendable`. Existen casos adicionales, como tipos aislados a un actor global; consulta la documentación para sus reglas.

```swift
final class Cuenta: Sendable {
    let saldo: Int
    init(saldo: Int) {
        self.saldo = saldo
    }
}
```

## `@unchecked Sendable`

`@unchecked Sendable` desactiva comprobaciones del compilador: no hace seguro un tipo. Resérvalo para casos avanzados cuya seguridad esté garantizada y verificada, por ejemplo mediante sincronización interna. Para estado mutable compartido, normalmente es más sencillo usar un actor:

```swift
actor Configuracion {
    private var modoOscuro = false

    func cambiarModo(activado: Bool) {
        modoOscuro = activado
    }
}
```

## Cuándo Usar `Sendable`
- Para asegurar que los datos compartidos entre tareas sean seguros.
- Para valores que cruzan límites de aislamiento entre tareas y actores.
- Para expresar y comprobar la seguridad de un tipo en concurrencia.


