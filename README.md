# My Personal Bash Config
This readme is just a way for me to make note of all the aliases and functions I've created because I often forget this little snippets of CLI magic.


### General Aliases

l="ls -la"
c="clear"
h="cd ~/"
reset="cd ~ && clear"
clock="update_clock"

b="source ~/.bash_aliases"

v="nvim"
vi="nvim"
vim="nvim"

python="python3"
py="python3"
pyv="source .venv/bin/activate"
pyvd="deactivate"

pn="pnpm"
doom="~/.config/emacs/bin/doom"

gts="git status"
gtb="git branch"
gtd="git diff"
gtp="git push"
gtpo="git push origin"
gtf="git fetch"
gtm="git merge"
gtr="git rebase"
gta="git add"
gtc="git commit -am"
gto="git checkout"

git-remove="git_remove_file"
git-status="git_status_check"
git-sync="git_sync_repos"

aws-sso="aws_sso_profile"

aws-ec2-running="aws ec2 describe-instances --filters Name=instance-state-name,Values=running --query 'Reservations[].Instances[].[InstanceId, Tags]' --output text"
aws-ec2-stop="aws ec2 stop-instances --instance-ids"
aws-ec2-start="aws ec2 start-instances --instance-ids"
aws-ecr-login="aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws"

aws-nosql-workbench='/opt/DynamoDBWorkbench/NoSQL\ Workbench-linux-3.10.0.AppImage'
aws-ecs-connect="aws_ecs_bash"

ls3="aws s3 ls"
put3="aws_s3_put_to_bucket"
get3="aws_s3_get_from_bucket"
rm3="aws_s3_remove_from_bucket"
mb3="aws_s3_create_bucket"
mvb="aws_s3_rename_bucket"

jq="docker run -it ghcr.io/jqlang/jq"

