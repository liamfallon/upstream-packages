# wonderful-feature

## Description
sample description

## Usage

### Fetch the package
`kpt pkg get REPO_URI[.git]/PKG_PATH[@VERSION] wonderful-feature`
Details: https://kpt.dev/reference/cli/pkg/get/

### View package content
`kpt pkg tree wonderful-feature`
Details: https://kpt.dev/reference/cli/pkg/tree/

### Apply the package
```
kpt live init wonderful-feature
kpt live apply wonderful-feature --reconcile-timeout=2m --output=table
```
Details: https://kpt.dev/reference/cli/live/
