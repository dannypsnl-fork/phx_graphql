defmodule PhxGraphql.UserProfiles.UserProfile do
  use Ecto.Schema
  import Ecto.Changeset

  schema "user_profiles" do
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(user_profile, attrs) do
    user_profile
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
