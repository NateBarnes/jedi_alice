defmodule Alice.Handlers.JediTest do
  use Alice.HandlerCase, handlers: Alice.Handlers.Jedi

  test "it responds to 'This is the way'" do
    send_message("This is the way")

    assert first_reply() == "This is the way"
  end

  test "it doesn't respond if it's used in a sentance" do
    send_message("Blah blah blah, this is the way")

    assert first_reply() == nil
  end
end
