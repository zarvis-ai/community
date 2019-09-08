=============================
Getting started with Skaffold
=============================

Skaffold_ is a command line tool that facilitates continuous development for Kubernetes applications.
Zarvis reads skaffold.yaml_ file in the repository root.

#. Connect your Github project.
#. Select branch that includes skaffold.yaml_ and deploy in 'Deploy' tab.
#. Zarvis automatically build and deploy to staging.
#. Optionally, promote to production and get production url.
#. Optionally, configure access control in 'Setting' tab.

To use specific profile in your skaffold.yaml_, create :ref:`zarvis.yaml` and configure profile name.

Zarvis creates new Namespace_ in Kubernetes cluster with arbitrary name to deploy your branch.
Therefore, your K   ubernetes manifests shouldn't depends on particular name of Namespace_.
Check :ref:`How it works` to know more about it.

.. include:: ../ref.rst