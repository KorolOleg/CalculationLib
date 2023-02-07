### prerequisites
cmake 3.23 or higher is required

### setup conan for the project
1. setup venv as recommended by Conan install page (https://docs.conan.io/en/latest/installation.html)
2. check what packages you have there
```bash
pip list

Package    Version
---------- -------
pip        21.3.1
setuptools 60.2.0
wheel      0.37.1
```
3. upgrade pip
```bash
python -m pip install --upgrade pip
```
4. Install conan
```bash
    pip3 install conan
```
5. check conan installation
```bash
    conan
```

6. there is CLion plug-in for Conan
UPDATE: not working with CLion 2022.2
https://blog.jetbrains.com/clion/2019/05/getting-started-with-the-conan-clion-plugin/
https://docs.conan.io/en/latest/integrations/ide/clion.html
7. setup conan profile (optional)
8. Packaging of the development tools
 ex. CMake, etc
9. conan remote
`conan remote add conan-myName https://bintray.com/myName/conan-myName`
`conan upload package-name/version@user/stable -r conan_myName --all`