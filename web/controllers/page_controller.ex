defmodule TranslatorTopic.PageController do
  use TranslatorTopic.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
