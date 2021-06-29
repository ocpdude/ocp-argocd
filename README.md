kubectl apply -k bootstrap/openshift-gitops/openshift-gitops-operator/base
kubectl apply -k bootstrap/openshift-gitops/base
kubectl apply -k bootstrap/sealed-secrets/sealed-secrets-operator/base/
