defmodule Example do
  @author "Dave Thomas"
  def get_author do
    @author
  end
end
IO.puts "Exampe was written by #{Example.get_author}"