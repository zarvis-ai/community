===============================
Getting started with Dockerfile
===============================

Zarvis reads Dockerfile_ in the repository root.

1. Connect your Github project.
2. Select branch that includes Dockerfile_ and deploy in 'Deploy' tab.
3. Zarvis build Dockerfile_ and deploy to staging.
4. Promote to production and get production url.
5. Configure access control in 'Setting' tab.

By default, Zarvis will connect endpoint url to port 8080.
To change this port number, create :ref:`zarvis.yaml` and configure port number.

.. include:: ../ref.rst