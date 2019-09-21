=============================
Getting started with Skaffold
=============================

Skaffold_ is a command-line tool that facilitates continuous development for Kubernetes applications.
Zarvis reads skaffold.yaml_ file in the repository root.

#. Connect your Github project.
#. Select a branch that includes skaffold.yaml_ and deploy in the 'Deploy' tab.
#. Zarvis automatically builds and deploys to staging.
#. Optionally, promote to production and get production url.
#. Optionally, configure access control in 'Setting' tab.

By default, Zarvis will configure http ingress to service name 'service' at port 8080.
Your Kubernetes manifests need to create a service with name 'service' with port 8080 to
allow http connection.

To use specific profile in your skaffold.yaml_ or use different service name and port to connect to ingress,
create :ref:`zarvis.yaml`.

Zarvis creates new Namespace_ in Kubernetes cluster with an arbitrary name to deploy your branch.
Therefore, your Kubernetes manifests shouldn't depend on the particular name of Namespace_.
Check :ref:`How it works` to know more about it.

.. include:: ../ref.rst