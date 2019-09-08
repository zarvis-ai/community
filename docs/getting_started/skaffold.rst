=============================
Getting started with Skaffold
=============================

Skaffold_ is a command line tool that facilitates continuous development for Kubernetes applications.
Zarvis reads skaffold.yaml_ file in the repository root.

1. Connect your Github project.
2. Select branch that includes skaffold.yaml_ and deploy in 'Deploy' tab.
3. Zarvis automatically build and deploy to staging.
4. Promote to production and get production url.
5. Configure access control in 'Setting' tab.

To use specific profile in your skaffold.yaml_, create :ref:`zarvis.yaml` and configure profile name.

Zarvis creates new Namespace_ in Kubernetes cluster with arbitrary name to deploy your branch.
Therefore, your Kubernetes manifests shouldn't depends on particular name of Namespace_.
Check :ref:`How it works` to know more about it.

.. include:: ../ref.rst