#!/bin/bash
set -eu -o pipefail

echo "Installing zip utils..."
sudo yum update -y -q
sudo yum install -y zip unzip

echo "Installing bk elastic stack bin files..."
sudo chmod +x /tmp/conf/bin/bk-*
sudo mv /tmp/conf/bin/bk-* /usr/local/bin

echo "Configuring awscli to use v4 signatures..."
sudo aws configure set s3.signature_version s3v4