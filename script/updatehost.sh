chmod 664 /etc/ansible/hosts
chown :jenkins /etc/ansible/hosts
echo [web] > /etc/ansible/hosts
aws  ec2 describe-instances --region us-east-2 --filters "Name=tag:Name,Values=web" --query 'Reservations[].Instances[].[PublicIpAddress]' --output text| grep -v None >> /etc/ansible/hosts
