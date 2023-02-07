TODO: describe how we utilize other libs we use without packaging for local development



https://docs.conan.io/en/latest/reference/commands/development/build.html

### local development
#### layout
https://docs.conan.io/en/latest/developing_packages/package_layout.html
use `layout` to describe `source` and `build` folders for a local project
and in the cache


in this way we can run conan local commands
(conan source, conan build, conan export-pkg) without taking care of specifying directories, always with the same syntax.

#### editable packages
the idea - to don`t package libs to simplify development of a project that comprises of multiple libs
https://docs.conan.io/en/latest/developing_packages/editable_packages.html#editable-packages
