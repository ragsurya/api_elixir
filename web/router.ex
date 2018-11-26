defmodule ApiAddressbook.Router do
  use ApiAddressbook.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  # scope "/", ApiAddressbook do
  #   pipe_through :browser # Use the default browser stack

  #   get "/", PageController, :index
  # end

  # Other scopes may use custom stacks.
  scope "/api/v1", ApiAddressBook do
    pipe_through :api

    get "/users", UserController, :index
    get "/users/:id", UserController, :show
    get "/users/:id/update", UserController, :update
  end
end
