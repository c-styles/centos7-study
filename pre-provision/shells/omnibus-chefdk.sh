# omnibus chefdk install. 公式マニュアルにはないが、コードにオプションが有る
# http://qiita.com/Hiraku/items/2de8b253ab44625ae3d5
curl -sL https://www.chef.io/chef/install.sh | sudo bash -s -- -P chefdk || exit $?

# 全ユーザー環境として設定しておく
cat << EOS > /etc/profile.d/chefdk.sh
#!/bin/bash -eux

export PATH=$PATH:/opt/chefdk/embedded/bin
EOS

source /etc/profile.d/chefdk.sh

#rubyがダブっているのを消す
yum -y erase ruby git || exit $?

#chefでgit使うので。
yum -y install git || exit $?
