===============================
Getting started with Dockerfile
===============================

Zarvis reads Dockerfile_ in the repository root.

#. Connect your Github project.
#. Select branch that includes Dockerfile_ and deploy in 'Deploy' tab.
#. Zarvis build Dockerfile_ and deploy to staging.
#. Optionally, promote to production and get production url.
#. Optionally, configure access control in 'Setting' tab.

By default, Zarvis will connect endpoint url to port 8080.
To change this port number, create :ref:`zarvis.yaml` and configure port number.

.. include:: ../ref.rst