sudo echo [web] > /etc/ansible/hosts
sudo aws  ec2 describe-instances --region us-east-2 --filters "Name=tag:Name,Values=web" --query 'Reservations[].Instances[].[PublicIpAddress]' --output text| grep -v None >> /etc/ansible/hosts
