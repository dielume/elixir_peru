defmodule ElixirPeruWeb.PageController do
  use ElixirPeruWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
