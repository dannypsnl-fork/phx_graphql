defmodule PhxGraphqlWeb.Schema.UserProfiles do
  use Absinthe.Schema.Notation

  alias PhxGraphqlWeb.Resolvers

  @desc "A user profile"
  object :user_profile do
    field :id, :id
    field :name, :string
  end

  object :get_user_profiles do
    field :user_profiles, list_of(:user_profile) do
      resolve(&Resolvers.UserProfiles.list_user_profiles/2)
    end
  end

  object :get_user_profile do
    field :user_profile, :user_profile do
      arg(:id, non_null(:id))

      resolve(&Resolvers.UserProfiles.get_user_profile/2)
    end
  end

  object :create_user_profile do
    field :create_user_profile, :user_profile do
      arg(:name, non_null(:string))

      resolve(&Resolvers.UserProfiles.create_user_profile/2)
    end
  end

  object :update_user_profile do
    field :update_user_profile, :user_profile do
      arg(:id, non_null(:id))
      arg(:name, :string)

      resolve(&Resolvers.UserProfiles.update_user_profile/2)
    end
  end

  object :delete_user_profile do
    field :delete_user_profile, :user_profile do
      arg(:id, non_null(:id))

      resolve(&Resolvers.UserProfiles.delete_user_profile/2)
    end
  end
end
