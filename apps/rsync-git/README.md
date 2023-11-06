# Rsync git conntent to destination

Deploys files from a git repo to a remote filesystem, such as http or ftp servers using rsync.

## Testing

ansible-playbook apps/rsync-git/ansible/playbooks/rsync-git.yaml \
 --extra-vars "git_repo_url=git@gitlab.com:indy863/home-lab-fun.git" \
 --extra-vars "git_dest=/tmp/git_repo" \
 --extra-vars "git_path_to_sync=machine_provisioning/network_provisioning/deployed/tftp/" \
 --extra-vars "dest=/tmp/dest"
