#!/bin/bash -eux

# 現状Vagrant依存
# Berkshelfでcookbooksに集約
cd /vagrant
chef exec berks vendor cookbooks
