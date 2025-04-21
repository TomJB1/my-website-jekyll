#!/bin/bash
#!/bin/bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cd "${SCRIPT_DIR}/.."
JEKYLL_DIR=$(pwd)

bash $SCRIPT_DIR/deploy.sh -f -l
python3 -m http.server -d $JEKYLL_DIR/_site
