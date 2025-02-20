# Declaraciones de Macros en Swift

Las **declaraciones de macros** en Swift permiten definir macros personalizadas que generan código en tiempo de compilación. Estas macros se pueden utilizar para automatizar tareas repetitivas, mejorar la seguridad del código y reducir la cantidad de código manual.

## ¿Cómo se Declara una Macro?

Las macros en Swift se definen mediante la palabra clave `macro` y pueden incluir una transformación de código. La sintaxis básica es la siguiente:

```swift
macro stringify<T>(_ value: T) -> (T, String) = #externalMacro(module: "MyMacros", type: "StringifyMacro")
```

En este ejemplo, la macro `stringify` toma un valor genérico `T` y lo devuelve junto con su representación en cadena de texto.

## Tipos de Declaraciones de Macros

Existen diferentes formas de definir macros en Swift:
- **Macros Independientes**: Se pueden invocar en cualquier parte del código sin estar asociadas a una declaración específica.
- **Macros Adjuntas**: Se aplican a funciones, propiedades o estructuras para modificar su comportamiento.

## Beneficios de las Declaraciones de Macros
- **Generación automática de código** que evita la repetición.
- **Mayor legibilidad y mantenibilidad** del código al encapsular lógica repetitiva.
- **Optimización del rendimiento** al realizar transformaciones en tiempo de compilación.

