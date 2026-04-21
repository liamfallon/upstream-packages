# boring-middleware

## Description
sample description

## Usage

### Fetch the package
`kpt pkg get REPO_URI[.git]/PKG_PATH[@VERSION] boring-middleware`
Details: https://kpt.dev/reference/cli/pkg/get/

### View package content
`kpt pkg tree boring-middleware`
Details: https://kpt.dev/reference/cli/pkg/tree/

### Apply the package
```
kpt live init boring-middleware
kpt live apply boring-middleware --reconcile-timeout=2m --output=table
```
Details: https://kpt.dev/reference/cli/live/
