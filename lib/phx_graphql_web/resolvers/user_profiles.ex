defmodule PhxGraphqlWeb.Resolvers.UserProfiles do
  alias PhxGraphql.UserProfiles
  alias PhxGraphql.UserProfiles.UserProfile

  def list_user_profiles(_args, _context) do
    {:ok, UserProfiles.list_user_profiles()}
  end

  def get_user_profile(%{id: id}, _context) do
    {:ok, UserProfiles.get_user_profile!(id)}
  end

  def create_user_profile(args, _context) do
    case UserProfiles.create_user_profile(args) do
      {:ok, %UserProfile{} = profile} -> {:ok, profile}
      {:error, changeset} -> {:error, inspect(changeset.errors)}
    end
  end

  def update_user_profile(attrs = %{id: id}, _context) do
    case UserProfiles.get_user_profile!(id) do
      nil ->
        {:error, "Profile not found"}

      %UserProfile{} = profile ->
        UserProfiles.update_user_profile(profile, attrs)
    end
  end

  def delete_user_profile(%{id: id}, _context) do
    case UserProfiles.get_user_profile!(id) do
      nil -> {:error, "Profile not found"}
      %UserProfile{} = profile -> UserProfiles.delete_user_profile(profile)
    end
  end
end
