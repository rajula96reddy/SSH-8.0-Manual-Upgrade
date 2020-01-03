# SSH-8.0-Manual-Upgrade

## Script to upgrade OpenSSH version to 8.0

## Running the script parallely on multiple nodes
`for line in `cat nodes.txt`; do ssh -o "StrictHostKeyChecking no" ubuntu@$line 'bash -s' < update_ssh.sh & done`

## Checking OpenSSH version in all the nodes with one command
