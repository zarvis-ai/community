=====================
Namespace
=====================

Zarvis builds and deploys each commits to a new Namespace_ in hosted Kubernetes cluster.
Name of a Namespace is not static, so your Kubernetes manifests should not depend on hard-coded namespace name.

Supported Kubernetes resource types
===================================

Today, Zarvis supports following Kubernetes resource types.

- Pod
- Job
- Deployment
- ReplicaSet
- Service ('ClusterIP' is supported)
- ConfigMap
- Secret

We're planning to support more resource types and custom resources, in the future.
