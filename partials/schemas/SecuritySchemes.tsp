
// Use this security scheme in your typespec files (as a copy) so it matches the main one.
// For a more comprehensive example, see https://github.com/grid-x/solution-backend-playground/tree/main/api-tooling
@doc("""
    Describes Token and Bearer authentication in the Authorization header.
    """)
model HeaderAuth<Name extends string> is ApiKeyAuth<ApiKeyLocation.header, Name>{
  description: "Enter either the JWT token with the prefix `Bearer ` or an API token with the prefix `Token `"
}

// Apply it to operations using the @useAuth annotation.
// We need to keep the header name as a type parameter, otherwise typespec
// generates a superfluous model for it ¯\_(ツ)_/¯
@useAuth(HeaderAuth<"Authorization">)
