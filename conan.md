#### info
cd cmake-build-debug
vim conanbuildinfo.txt

#### local cache
user folder for `conan install`
used for package recipes and binary packages storage and caching
~/.conan/data

expect:
`conan search`

remove packages
`conan remove`

remove all packages
`conan remove "*"`

#### inspect all your current projects dependencies
`conan info . ### point it to the location of conanfile.py`

generate graph
```bash
$ conan info .. --graph=file.html
$ file.html # or open the file, double-click
```