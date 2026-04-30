#! /bin/bash

rm -fr boring-middleware

kpt pkg get https://github.com/liamfallon/upstream-packages/nginx-dir-named@nginx-dir-v1 boring-middleware
kpt pkg get https://github.com/liamfallon/upstream-packages/nginx-dir-named@nginx-dir-v1 boring-middleware/bm-subdir-a
kpt pkg get https://github.com/liamfallon/upstream-packages/nginx-dir-named@nginx-dir-v1 boring-middleware/bm-subdir-b
kpt pkg get https://github.com/liamfallon/upstream-packages/nginx-dir-named@nginx-dir-v1 boring-middleware/bm-dep-subpkg-1
kpt pkg get https://github.com/liamfallon/upstream-packages/nginx-dir-named@nginx-dir-v1 boring-middleware/bm-dep-subpkg-1/bm-dep-subsubpkg-1-1
kpt pkg get https://github.com/liamfallon/upstream-packages/nginx-dir-named@nginx-dir-v1 boring-middleware/bm-dep-subpkg-3
kpt pkg get https://github.com/liamfallon/upstream-packages/nginx-dir-named@nginx-dir-v1 boring-middleware/bm-dep-subpkg-2
kpt pkg get https://github.com/liamfallon/upstream-packages/nginx-dir-named@nginx-dir-v1 boring-middleware/bm-dep-subpkg-2/bm-dep-subsubpkg-2-1
kpt pkg get https://github.com/liamfallon/upstream-packages/nginx-dir-named@nginx-dir-v1 boring-middleware/bm-dep-subpkg-2/bm-dep-subsubpkg-2-3
kpt pkg get https://github.com/liamfallon/upstream-packages/nginx-dir-named@nginx-dir-v1 boring-middleware/bm-dep-subpkg-2/bm-dep-subsubpkg-2-2
kpt pkg get https://github.com/liamfallon/upstream-packages/nginx-dir-named@nginx-dir-v1 boring-middleware/bm-dep-subpkg-2/bm-dep-subsubpkg-2-2/bm-dep-subsubsubpkg-2-2-1

rm boring-middleware/bm-subdir-a/Kptfile
rm boring-middleware/bm-subdir-a/package-context.yaml
rm boring-middleware/bm-subdir-a/package-options.yaml
rm boring-middleware/bm-subdir-a/starlark-set-to-dir-name.yaml
rm boring-middleware/bm-subdir-b/Kptfile
rm boring-middleware/bm-subdir-b/package-context.yaml
rm boring-middleware/bm-subdir-b/package-options.yaml
rm boring-middleware/bm-subdir-b/starlark-set-to-dir-name.yaml

yq -i 'del(.upstream, .upstreamLock, .status)' boring-middleware/Kptfile
yq -i '.data.name = "boring-middleware"' boring-middleware/package-context.yaml
yq -i '.data.name = "boring-middleware"' boring-middleware/package-options.yaml

kpt fn render boring-middleware

sed -i 's/boring-middleware/bm-subdir-a/g' boring-middleware/bm-subdir-a/*
sed -i 's/boring-middleware/bm-subdir-b/g' boring-middleware/bm-subdir-b/*

rm -fr wonderful-feature

kpt pkg get https://github.com/liamfallon/upstream-packages/nginx-dir-named@nginx-dir-v1 wonderful-feature
kpt pkg get https://github.com/liamfallon/upstream-packages/nginx-dir-named@nginx-dir-v1 wonderful-feature/wf-subdir-a
kpt pkg get https://github.com/liamfallon/upstream-packages/nginx-dir-named@nginx-dir-v1 wonderful-feature/wf-subdir-b
kpt pkg get https://github.com/liamfallon/upstream-packages/nginx-dir-named@nginx-dir-v1 wonderful-feature/wf-dep-subpkg-1
kpt pkg get https://github.com/liamfallon/upstream-packages/nginx-dir-named@nginx-dir-v1 wonderful-feature/wf-dep-subpkg-1/wf-dep-subsubpkg-1-1
kpt pkg get https://github.com/liamfallon/upstream-packages/nginx-dir-named@nginx-dir-v1 wonderful-feature/wf-dep-subpkg-3
kpt pkg get https://github.com/liamfallon/upstream-packages/nginx-dir-named@nginx-dir-v1 wonderful-feature/wf-dep-subpkg-2
kpt pkg get https://github.com/liamfallon/upstream-packages/nginx-dir-named@nginx-dir-v1 wonderful-feature/wf-dep-subpkg-2/wf-dep-subsubpkg-2-1
kpt pkg get https://github.com/liamfallon/upstream-packages/nginx-dir-named@nginx-dir-v1 wonderful-feature/wf-dep-subpkg-2/wf-dep-subsubpkg-2-3
kpt pkg get https://github.com/liamfallon/upstream-packages/nginx-dir-named@nginx-dir-v1 wonderful-feature/wf-dep-subpkg-2/wf-dep-subsubpkg-2-2
kpt pkg get https://github.com/liamfallon/upstream-packages/nginx-dir-named@nginx-dir-v1 wonderful-feature/wf-dep-subpkg-2/wf-dep-subsubpkg-2-2/wf-dep-subsubsubpkg-2-2-1

rm wonderful-feature/wf-subdir-a/Kptfile
rm wonderful-feature/wf-subdir-a/package-context.yaml
rm wonderful-feature/wf-subdir-a/package-options.yaml
rm wonderful-feature/wf-subdir-a/starlark-set-to-dir-name.yaml
rm wonderful-feature/wf-subdir-b/Kptfile
rm wonderful-feature/wf-subdir-a/package-context.yaml
rm wonderful-feature/wf-subdir-a/package-options.yaml
rm wonderful-feature/wf-subdir-b/starlark-set-to-dir-name.yaml

yq -i 'del(.upstream, .upstreamLock, .status)' wonderful-feature/Kptfile
yq -i '.data.name = "wonderful-feature"' wonderful-feature/package-context.yaml
yq -i '.data.name = "wonderful-feature"' wonderful-feature/package-options.yaml

kpt fn render wonderful-feature

sed -i 's/wonderful-feature/wf-subdir-a/g' wonderful-feature/wf-subdir-a/*.yaml
sed -i 's/wonderful-feature/wf-subdir-b/g' wonderful-feature/wf-subdir-b/*.yaml
