#!/bin/bash -e
################################################################################
##  File: generate_helm_docs.sh
##  Desc: Generates Helm documentation for the charts using helm-docs
################################################################################

set -e  # Exit on any error
set -u  # Treat unset variables as errors
set -o pipefail  # Catch errors in piped commands

# validate helm-docs is installed
command -v helm-docs >/dev/null 2>&1 || {
    echo >&2 "helm-docs (https://github.com/norwoodj/helm-docs) is not installed. Aborting."
    exit 1
}

# settings
charts_location="."
readme_template=".helm-docs-templates/README.md.gotmpl"
readme_config_template="README_CONFIG.md.gotmpl"

# run helm-docs for charts
helm-docs \
    --template-files="${readme_template}" \
    --template-files="${readme_config_template}" \
    --chart-search-root="${charts_location}"