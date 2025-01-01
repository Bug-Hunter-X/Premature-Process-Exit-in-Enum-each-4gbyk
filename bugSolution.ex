```elixir
list = [1, 2, 3, 4, 5]

Enum.each(list, fn x ->
  if x == 3 do
    IO.puts("Stopping iteration at 3")
    :done # Return a value to signal stopping the Enum.each
  else
    IO.puts(x)
  end
end)
```