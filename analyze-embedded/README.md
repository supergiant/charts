Analyze Core
=======

Analyze Core is a scheduler server that exposes a rich API for its plugins and also provides an intuitive Web interface.

TL;DR;
------

If you do not have ETCD server, simply run:
```console
$ helm install stable/etcd-operator --name my-release-o --namespace kube-system --set deployments.etcdOperator=true
$ cat <<EOF | kubectl apply --namespace=kube-system -f -
apiVersion: "etcd.database.coreos.com/v1beta2"
kind: "EtcdCluster"
metadata:
  name: "etcd-cluster"
spec:
  size: 3
  version: "3.2.25"
EOF

$ kubectl describe svc etcd-cluster-client --namespace=kube-system
```

To install Analyze-Core use:
```console
$ helm repo add supergiant https://supergiant.github.io/charts
$ helm install --name analyze-core --namespace=kube-system supergiant/analyze --set etcd.endpoints=etcd-cluster-client:2379
``` 

Introduction
------------