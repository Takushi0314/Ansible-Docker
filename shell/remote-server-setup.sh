REMOTE_IP_ADDR=""
REMOTE_USER_NAME=""

# setup ssh on client
ssh-keygen -t rsa
# send public key to remote server
ssh ${REMOTE_USER_NAME}@${REMOTE_IP_ADDR} mkdir ~/.ssh
scp ~/.ssh/id_rsa.pub ${REMOTE_USER_NAME}@${REMOTE_IP_ADDR}:~/client.pub
ssh ${REMOTE_USER_NAME}@${REMOTE_IP_ADDR} client.pub >> ~/.ssh/authorized_keys
ssh ${REMOTE_USER_NAME}@${REMOTE_IP_ADDR} rm client.pub
# change remote server .ssh permission
ssh ${REMOTE_USER_NAME}@${REMOTE_IP_ADDR} chmod 700 ~/.ssh
ssh ${REMOTE_USER_NAME}@${REMOTE_IP_ADDR} chmod 600 ~/.ssh/authorized_keys