i# Process spawing in elixir
# Author: Ananth Madhavan
spawn_link fn -> raise "This is an error!" end

receive do
  :hello -> "Let this process fail"
end
