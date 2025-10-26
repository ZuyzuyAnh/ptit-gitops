for ns in $(kubectl get ns -o jsonpath='{.items[*].metadata.name}'); do
  kubectl -n "$ns" rollout restart deployment --all
  kubectl -n "$ns" rollout restart statefulset --all
  kubectl -n "$ns" rollout restart daemonset --all
done