defmodule Alice.Handlers.Jedi do
  use Alice.Router

  route ~r/^this is the way/i, :the_way_response

  def the_way_response(conn) do
    reply("This is the Way", conn)
  end
end
