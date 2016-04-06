mkdir -p roles/elasticsearch
rsync -va --exclude .git --exclude roles ./ roles/elasticsearch/
ansible-playbook -i test-inventory test-playbook.yml -e environ=dev -e region="us-west-2" -vvvv
