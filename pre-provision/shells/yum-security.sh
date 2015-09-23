#!/bin/bash -eux

# yum-securityを事前に入れる:
yum -y install yum-plugin-security

# セキュリティアップデートのみ行う
yum --security -y update
