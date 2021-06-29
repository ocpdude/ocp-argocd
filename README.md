kubectl apply -k bootstrap/openshift-gitops/openshift-gitops-operator/base
kubectl apply -k bootstrap/openshift-gitops/base
kustomize build bootstrap/sealed-secrets/base | kubectl apply -f -
