defmodule PhxGraphqlWeb.Router do
  use PhxGraphqlWeb, :router

  pipeline :graphql do
  end

  scope "/api", PhxGraphqlWeb do
    pipe_through :graphql


    forward "/", Absinthe.Plug, schema: PhxGraphqlWeb.Schema
  end

  if Mix.env in [:dev, :test] do
    forward "/graphiql", Absinthe.Plug.GraphiQL, schema: PhxGraphqlWeb.Schema
  end
end
