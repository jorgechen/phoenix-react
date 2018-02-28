defmodule SFComboWeb.PageController do
  use SFComboWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
