#!/bin/bash

# https://stackoverflow.com/questions/3572030/bash-script-absolute-path-with-os-x
realpath() {
    [[ $1 = /* ]] && echo "$1" || echo "$PWD/${1#./}"
}

SCRIPTDIR=$(dirname $(realpath $0))
zip -j ${SCRIPTDIR}/codedeploy-archive.zip ${SCRIPTDIR}/appspec.yml ${SCRIPTDIR}/index.html

# use the following command to inspect zipfile contents
# zipinfo codedeploy-archive.zip
