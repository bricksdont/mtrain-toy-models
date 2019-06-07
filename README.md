# mtrain-toy-models

Make a Python3 virtualenv:

    ./scripts/make_virtualenv.sh

Make sure to activate the virtualenv after that.

Then install packages:

    ./scripts/download_install_packages.sh

Then download and prepare data:

    ./scripts/download_split_data.sh

This only splits data, preprocessing is not needed since mtrain does it on its own.

You need to set a few environment variables by _sourcing_ (instead of executing in a subshell) this script:

    source ./scripts/set_environment_variables.sh

Then train a model, without tuning on validation data, but including evaluation with sacrebleu:

    ./scripts/train.sh
