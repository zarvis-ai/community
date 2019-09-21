=====================
zarvis.yaml Examples
=====================


Skaffold
========

Use 'skaffold.yaml' in the project root with the default profile.

.. code-block:: yaml

    apiVersion: beta/v1
    deploy:
      skaffold: {}            # make sure empty object is assigned
    ingress:
      - serviceName: my-service   # name of a Kubernetes Service resource want to connect to the public endpoint
        port: 8080



Skaffold with profile
=====================

Use 'skaffold.yaml' in the project root with profile 'production'.

.. code-block:: yaml

    apiVersion: beta/v1
    deploy:
      skaffold:
        profile: production
    ingress:
      - serviceName: my-service
        port: 8080

Dockerfile
==========

Use 'Dockerfile' in the project root.

.. code-block:: yaml

    apiVersion: beta/v1
    deploy:
      dockerfile: {}          # make sure empty object is assigned.


For a complete example, please see :doc:`../examples`

.. include:: ../ref.rst
