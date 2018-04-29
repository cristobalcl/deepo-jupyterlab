JupyterLab over ufoym/deepo
===========================

Run [JupyterLab](https://jupyterlab.readthedocs.io) over [ufoym/deepo](https://github.com/ufoym/deepo).

Usage
-----

### Basic

```
nvidia-docker run -it -p 8888:8888 cristobalcl/deepo:jupyterlab
```

This will run the server with the default password `jupyterlab`.

### Advanced

To set a password and mount some directories run like this:

```
# Create the local dirs
mkdir -p notebooks
mkdir -p datasets

# Run
nvidia-docker run -it -p 8888:8888 \
    --mount type=bind,source="$(pwd)/notebooks"/,target=/notebooks \
    --mount type=bind,source="$(pwd)/datasets"/,target=/datasets \
    cristobalcl/deepo:jupyterlab \
    run "p4ssw0rd"
```

Build
-----

```bash
./build.sh
```
