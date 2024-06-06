export do="--dry-run=client -o yaml"

alias kc="kubectl create"
alias ka="kubectl apply -f"
alias kr="kubectl replace --force -f"
alias kn="kubectl config set-context --current --namespace"


alias debug="kubectl run -it --rm --image=curlimages/curl c -- sh"
