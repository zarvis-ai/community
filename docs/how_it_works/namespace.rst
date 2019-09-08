=====================
Namespace
=====================

Zarvis build and deploy each commits to a new Namespace_ in hosted Kubernetes cluster.
Name of a Namespace is not static, so your Kubernetes manifests should not depends on hard-coded namespace name.

Supported Kubernetes resource types
===================================

Today, Zarvis supports following kubernetes resource types.

- Pod
- Job
- Deployment
- ReplicaSet
- Service ('ClusterIP' is supported)
- Configmap
- Secret

We're planning to support more resources types and custom resources, in the future.
