# Chuleta

## Demo 1: Desmembrando ASTs

### Ejemplo 1
```elixir
  ast = quote do
  unless 1 == 1 do
    IO.puts("Oh my!")
  end
  end
```

#### Pasos
```elixir
ast |> Macro.expand_once(__ENV__)
ast |> Macro.expand_once(__ENV__) |> Macro.to_string |> IO.puts
unless 1 == 1, do: IO.puts("Oh my!")
ast |> Macro.expand(__ENV__) |> Macro.to_string |> IO.puts
```


### Ejemplo 2
```elixir
  ast = quote do
  def sum(a, b) do
    a + b
  end
  end
```
#### Pasos

```elixir
ast |> Macro.to_string
ast |> Macro.to_string |> IO.puts
ast |> Macro.expand(__ENV__) # <= da error, pasar al ejemplo 2
```

### Ejemplo 3
```elixir
  ast = quote do
  defmodule MyModule do
    def sum(a, b) do
      a + b
    end
  end
  end
```

#### Pasos
```elixir
ast |> Macro.expand(__ENV__)
ast |> Macro.expand(__ENV__) |> Macro.to_string |> IO.puts
```

## Demo 2: DSL de mascotas

### prerrequisitos

- Código en rama master
- Una shell de `iex -S mix`

### Pasos

- Escribir el código de `quote do: pet "Bucky"` para obtener su AST
- Escribir el AST para que genere la función `greet/0`
- Escribir en el fichero `template.ex`:
  ```elixir
    defmodule Template do
      import Pets.Pet
      pet "Bucky"
      pet "Gardfield"
    end
  ```
- Comprobar que funciona
- Enriquecer macro con bloque do en el fichero template
- Escribir el código del quote para obtener su AST
- Añadir función `hobbies/0` y enriquecer `greet/0`
- Añadir `__using__`

## Demo 3: LogicElixir

- Mostrar algunos ejemplos del repo `logic_elixir_examples` (defpred y findall sobre funciones)