============
zarvis.yaml
============

Place `zarvis.yaml`_ file in your Github project repository root.
This file tells how to build, deploy and serve the project.

Overview
--------

.. code-block:: yaml

    apiVersion: beta/v1
    deploy:                      # (Required) Precisely one of 'docker', 'skaffold' must be set.
      docker:                    # Build Dockerfile and deploy.
        file: Dockerfile         # locates the Dockerfile relative to workspace. Defaults to 'Dockerfile'.
        service: docker          # Name of a Service to create, so ingress can connect. Defaults to 'docker'.
        port: 8000               # Port number to configure in the Service. Defaults to '8000'.
      skaffold:                  # Run skaffold to deploy the project.
        file: skaffold.yaml      # locates the skaffold.yaml relative to workspace. Defaults to 'skaffold.yaml'.
        profile:                 # Name of a profile to use.
    ingress:                     # Ingress configures https endpoints.
    - service:                   # Name of a Service to connect.
      port:                      # Port number of the service.

deploy
------
    Precisely one of 'dockerfile', 'skaffold' must be set.

ingress
-------
    Ingress creates https endpoint and connect your Service_.

zarvis.yaml examples
--------------------

Skaffold
========

.. code-block:: yaml

    apiVersion: beta/v1
    deploy:
      skaffold: {}            # make sure empty object is assigned
    ingress:
      - serviceName: public   # name of a Kubernetes Service resource want to connect to public endpoint
        port: 8080



Skaffold with profile
=====================

.. code-block:: yaml

    apiVersion: beta/v1
    deploy:
      skaffold:
        profile: production
    ingress:
      - serviceName: public
        port: 8080

Dockerfile
==========

.. code-block:: yaml

    apiVersion: beta/v1
    deploy:
      dockerfile: {}          # make sure empty object is assigned.


For complete example, please see :doc:`examples`

.. include:: ../ref.rst