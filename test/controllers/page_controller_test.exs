defmodule TranslatorTopic.PageControllerTest do
  use TranslatorTopic.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "Welcome to Phoenix!"
  end
end
