#!/bin/bash -ex

source "$(dirname $0)/set_env_vars_for_deis.sh" QS STAGING
DEIS_APPS="lookerbot"
DEIS_APP_TAG="deis-apps"

DEPLOY_SCRIPT=/tmp/deploy.$$.sh
curl https://deploy-support-tool.quipper.net/scripts/deploy.sh.txt > ${DEPLOY_SCRIPT}
. ${DEPLOY_SCRIPT}

deploy
