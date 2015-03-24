ansible -v || yum install -y git &&
git clone git://github.com/ansible/ansible.git &&
cd ansible && make install
