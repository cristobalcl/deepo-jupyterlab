#!/usr/bin/env bash

set -e

if [ $# -eq 1 ]; then
    PASSWORD="$1"
else
    PASSWORD="jupyterlab"
    echo -e "\e[93m==> Warning: using default password!\e[0m"
fi

mkdir -p /root/.jupyter

cat > /root/.jupyter/jupyter_notebook_config.py << EOF
c.NotebookApp.password = '`python -c "from notebook.auth import passwd; print(passwd('${PASSWORD}'))"`'
c.NotebookApp.password_required = True
c.NotebookApp.port = 8888
c.NotebookApp.ip = '0.0.0.0'
EOF

KERAS_BACKEND=theano jupyter lab --no-browser --allow-root
