# PhxGraphql

Run `mix phx.server` and visit `http://localhost:4000/graphiql` to play with GraphQL. The following GraphQL script would be useful.

```
mutation Add {
  userProfile: createUserProfile(
    name: "name",
  ) {
  	id
    name
  }
}

mutation Update {
  profile: updateUserProfile(
    id: 6,
  	name: "ntest"
  ) {
    id
	  name
  }
}

mutation Delete {
  profile: deleteUserProfile(
    id: 5,
  ) {
    id
    name
  }
}

query List {
  userProfiles {
    id
    name
  }
}
```
