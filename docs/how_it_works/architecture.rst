=====================
Architecture
=====================

Learn more about the architecture and behavior of Zarvis.

Build
------------

When a Github pushes a new commit, Zarvis receive an event from Github through Github App.
The received event trigger scheduler and scheduler starts a build.

#. Spin-up fresh new, dedicated VM.
#. Clone repository and checkout commit in the VM.
#. Build the project and create docker images.

     #. If zarvis.yaml exists, process the file
     #. Else if skaffold.yaml exists, use Skaffold to build
     #. Else if Dockerfile exists, build a docker image using it
     #. Else, use Buildpacks to auto-detect and build project

#. Push docker images to private docker registry managed by Zarvis.
#. Destroy VM and cloned source code inside of it.


Deploy to Kubernetes cluster
----------------------------

Once build succeed and docker images are pushed, scheduler starts deploy process.

#. Scheduler picks a Kubernetes Cluster to deploy, based on resource availability, pricing tier, and location.
#. Scheduler creates a new namespace in the selected cluster.
#. Deploy the project to the namespace.
#. After scheduler confirms the health of the deploy, Zarvis update routing table and starts route traffics.

Note that the name of namespace is not deterministic. So your Kubernetes manifests can not have hardcoded namespace.

On new commit push
------------------

On new commit push, Zarvis initiates new Build and Deploy process.
Deploy process always creates a new namespace and does not change namespace of the previous commit.
Once the health of deploy is confirmed in the new namespace, Zarvis change traffic route to the new namespace
and then remove old namespace.

