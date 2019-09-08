=====================
Architecture
=====================

Learn more about architecture and behavior of Zarvis.

Build
------------

When a Github pushes a new commit, Zarvis receive an event from Github through Github App.
The received event trigger scheduler and scheduler starts a build job. A build job follows folling steps.

1. Spin-up fresh new, dedicated VM.
2. Clone repository and checkout commit in the VM.
3. Build project and create docker images.
     1. try find zarvis.yaml
     2. try find skaffold.yaml
     3. try find Dockerfile
     4. Use buildpacks to auto-detect and build project
4. Push docker images to private docker registry managed by Zarvis.
5. Destroy VM and cloned source code inside of it.


Deploy to Kubernetes cluster
----------------------------

Once build succeed and docker images are pushed, scheduler starts deploy process.

1. Scheduler picks an Kubernetes Cluster to deploy, based on resource availability, pricing tier, and location.
2. Scheduler creates a new namespace in selected cluster.
3. Deploy project to the namespace.
4. After scheduler confirms health of the deploy, Zarvis update routing table and starts route traffics.

Note that name of namespace is not deterministic. So your Kubernetes manifests can not have hardcoded namespace.

On new commit push
------------------

On new commit push, Zarvis initiates new Build and Deploy process.
Deploy process always create new namespace and does not change namespace of previous commit.
Once health of deploy is confirmed in the new namespace, Zarvis change traffic route to the new namespace
and then remove old namespace.

