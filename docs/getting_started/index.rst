Getting started
==================================

Welcome to Z.A.R.V.I.S. Zarvis provide an easy way to deploy Github project to hosted Kubernetes cluster.
Zarvis can build and deploy many different types of projects in just a few clicks or a single git commit push.

If your project has skaffold.yaml_, Zarvis builds and deploys the project using it.
If a project has Dockerfile_, Zarvis build Dockerfile and deploy the image.

Zarvis uses Buildpacks_ to build your project when neither skaffold.yaml_ and Dockerfile_ exists.
Buildpacks can auto-detect projects such as node js, java, go, python, php and many more.

When you want to customize how Zarvis build and deploy your project, just place a :ref:`zarvis.yaml` in your repository.

Are you ready?

.. toctree::
   :maxdepth: 2

   Skaffold <skaffold>
   Dockerfile <dockerfile>
   Buildpacks <buildpacks>


Check :ref:`Example projects` as well.

.. include:: ../ref.rst