// Use this extension in your typespec files (as a copy) as an annotation on an endpoint 
// level to mark it as beta.
// For a more comprehensive example, see https://github.com/grid-x/solution-backend-playground/tree/main/api-tooling
@extension(
  "x-badges",
  [
    {
      label: "beta",
      color: "orange",
    }
 ]
)
