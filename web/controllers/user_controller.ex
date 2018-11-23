defmodule ApiAddressBook.UserController do
  use ApiAddressbook.Web, :controller

  def index(conn, _params) do
    users = Repo.all(ApiAddressBook.User)
    json conn, users
  end

  def show(conn, %{"id" => id}) do
    user = Repo.get(ApiAddressBook.User, String.to_integer(id))
    json conn, user
  end
end
