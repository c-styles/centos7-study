# omnibus chefdk install. 公式マニュアルにはないが、コードにオプションが有る
# http://qiita.com/Hiraku/items/2de8b253ab44625ae3d5
curl -sL https://www.chef.io/chef/install.sh | sudo bash -s -- -P chefdk || exit $?

#chefでgit使うので。
yum -y install git || exit $?
