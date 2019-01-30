#!/bin/bash

echo ${JUPYTER_PASS}

PASSWORD_HASH=`python -c "from notebook.auth import passwd;print(passwd('${JUPYTER_PASS}'), end='')"`

echo ${PASSWORD_HASH}
start-notebook.sh --NotebookApp.password="${PASSWORD_HASH}"
