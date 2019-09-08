Getting started
==================================

Welcome to Z.A.R.V.I.S. Zarvis provides easy way to deploy your Github project to hosted Kubernetes cluster.
Zarvis can build and deploy many different types of projects in just few clicks.

If your project has skaffold.yaml_, Zarvis build and deploy project using it.
If project has Dockerfile_, Zarvis build docker file and deploy image.

Zarvis uses Buildpacks_ to build your project when neither skaffold.yaml_ and Dockerfile_ exists.
Buildpacks can auto-detect projects such as nodejs, java, go, python, php and many others.

When you want to customize how Zarvis build and deploy your project, just place a :ref:`zarvis.yaml` in your repository.

Are you ready?

.. toctree::
   :maxdepth: 2

   Skaffold <skaffold>
   Dockerfile <dockerfile>
   Buildpacks <buildpacks>


Check :ref:`Example projects` as well.

.. include:: ../ref.rst