# my-python-packages

## cd into package dir and build 'my_utils' package locally
```
cd C:\Users\amaguire\Documents\GitHub\ami-python-packages\my_utils && python setup.py bdist_egg
```

## conda install package 'my_utils' for local dev into the mypy36 conda env i use locally. 
```
conda develop -n mypy36 C:\\Users\\amaguire\\Documents\\GitHub\\my-python-packages\\my_utils
```

## aws cli to create new layer version from local zip
```
aws lambda publish-layer-version --layer-name test --zip-file fileb://Python.zip
```
or if zip is from s3:
```
aws lambda publish-layer-version --layer-name test --content S3Bucket=andrewm4894-python-packages,S3Key=latest/python.zip --region us-west-2
```

## build package
```
cd C:\\Users\\amaguire\\Documents\\GitHub\\my-python-packages\\my_utils
python setup.py bdist_egg
```

## build docker image
```
docker build -t my-python-packages -f ./Dockerfile ./
```

## Run container, mount folders, pass aws keys
```
docker run -it --name my-python-packages -p 8888:8888 --mount type=bind,source="$(pwd)/work",target=/home/jovyan/work --mount type=bind,source="$(pwd)/packages",target=/home/jovyan/packages -e AWS_ACCESS_KEY_ID=$(aws --profile default configure get aws_access_key_id) -e AWS_SECRET_ACCESS_KEY=$(aws --profile default configure get aws_secret_access_key) my-python-packages
```

## Stop container
```
docker stop my-python-packages
```

## Remove container
```
docker container rm my-python-packages
```