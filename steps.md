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
3. check conan installation
```bash
    conan
```

install dependencies (install_dependencies.md)

## package generation
cd conan_receipt
conan create .
