defmodule ElixirTest.WriteRandomNumber do
  def write do
    path = Path.join([
        :code.priv_dir(:elixir_test),
        "file.txt"
      ])

    rand = :rand.uniform(1000)
    File.write!(path, "penis: #{rand}")
  end
end
