#! /bin/bash

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
rm boring-middleware/bm-subdir-a/starlark-set-to-dir-name.yaml
rm boring-middleware/bm-subdir-b/Kptfile
rm boring-middleware/bm-subdir-b/package-context.yaml
rm boring-middleware/bm-subdir-b/starlark-set-to-dir-name.yaml

yq -i '(del(.upstream)) | del(.upstreamLock) | del(.status)' boring-middleware/Kptfile

#kpt fn render boring-middleware
