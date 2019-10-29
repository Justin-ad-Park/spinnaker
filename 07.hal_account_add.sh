hal config provider kubernetes account add k8s-account \
     --provider-version v2 \
     --context $(kubectl config current-context)
