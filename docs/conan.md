#### refs
https://docs.conan.io/en/latest/getting_started.html  
https://docs.conan.io/en/latest/creating_packages/getting_started.html  
https://github.com/conan-io/cmake-conan  


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