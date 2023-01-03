#!/bin/bash

cat << EOF > ../.ebextensions/02-env-doppler.config
option_settings:
  "aws:elasticbeanstalk:application:environment":
    HISTIGNORE: DOPPLER_TOKEN*
    DOPPLER_TOKEN: $1

commands:
  01-install-doppler:
    command: (curl -Ls --tlsv1.2 --proto "=https" --retry 3 https://cli.doppler.com/install.sh || wget -t 3 -qO- https://cli.doppler.com/install.sh) | sudo sh
EOF