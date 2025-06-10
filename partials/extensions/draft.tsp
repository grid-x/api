// Use this extension in your typespec files (as a copy) as an annotation on an endpoint 
// level to mark it as draft.
// For a more comprehensive example, see https://github.com/grid-x/solution-backend-playground/tree/main/api-tooling
// Eventually, there might be a typespec library containing it: https://typespec.io/docs/extending-typespec/basics/
@extension(
  "x-badges",
  [
    {
      label: "draft",
      color: "red",
    }
 ]
)