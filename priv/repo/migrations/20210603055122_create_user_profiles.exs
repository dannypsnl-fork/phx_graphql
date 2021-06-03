defmodule PhxGraphql.Repo.Migrations.CreateUserProfiles do
  use Ecto.Migration

  def change do
    create table(:user_profiles) do
      add :name, :string

      timestamps()
    end

  end
end
