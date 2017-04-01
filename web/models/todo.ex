defmodule Todo.Todo do
  use Todo.Web, :model

  schema "todos" do
    field :title, :string
    field :completed, :boolean, default: false
    belongs_to :user, Todo.User

    timestamps
  end


  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :completed])
    |> validate_required([:title, :completed])
  end
end
