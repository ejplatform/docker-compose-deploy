#!/usr/bin/env bash
#
# Notify Rancher that images were changed.
#
sudo docker run cdrx/rancher-gitlab-deploy /bin/sh -c "                        \
    upgrade                                                                    \
        --service web                                                          \
        --rancher-url $RANCHER_URL                                             \
        --environment $RANCHER_ENVIRONMENT                                     \
        --stack $RANCHER_STACK                                                 \
        --rancher-key $RANCHER_ACCESS_KEY                                      \
        --rancher-secret $RANCHER_SECRET_KEY;                                  \
    upgrade                                                                    \
        --service nginx                                                        \
        --rancher-url $RANCHER_URL                                             \
        --environment $RANCHER_ENVIRONMENT                                     \
        --stack $RANCHER_STACK                                                 \
        --rancher-key $RANCHER_ACCESS_KEY                                      \
        --rancher-secret $RANCHER_SECRET_KEY"