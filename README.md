# my-python-packages

## cd into package dir and build 'my_utils' package locally
```
cd C:\Users\amaguire\Documents\GitHub\ami-python-packages\my_utils && python setup.py bdist_egg
```

## conda install package 'my_utils' for local dev into the mypy36 conda env i use locally. 
```
conda develop -n mypy36 C:\\Users\\amaguire\\Documents\\GitHub\\my-python-packages\\my_utils
```