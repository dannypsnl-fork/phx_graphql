defmodule PhxGraphqlWeb.Schema do
  use Absinthe.Schema

  alias PhxGraphqlWeb.Schema

  import_types(Schema.UserProfiles)

  query do
    import_fields(:get_user_profiles)
    import_fields(:get_user_profile)
  end

  mutation do
    import_fields(:create_user_profile)
    import_fields(:update_user_profile)
    import_fields(:delete_user_profile)
  end
end
