defmodule ApiAddressbook.Repo do
  #use Ecto.Repo, otp_app: :api_addressbook
  def all(ApiAddressBook.User) do
    [
        %ApiAddressBook.User{
          id: 1,
          name: "Raghav",
          email: "ragav@gmail.com",
          age: 32
        },
        %{
          id: 2,
          name: "Abi",
          email: "Abi@gmail.com",
          age: 32
        },
        %{
          id: 3,
          name: "Sarvesh",
          email: "Sarvesh@gmail.com",
          age: 5
        }
    ]
  end

  def get(module, id) do
    Enum.find all(module), fn elem -> elem.id == id end
  end
end
