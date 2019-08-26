============
zarvis.yaml
============

Place `zarvis.yaml`_ file in your Github project repository root.
This file tells how to build, deploy and serve the project.
If `zarvis.yaml`_ does not exists, project will be built with `buildpacks`_.

Overview
--------

.. code-block:: yaml

    apiVersion: beta/v1
    deploy:                               # (Required) Precisely one of 'buildpack', 'docker', 'skaffold' must be set.
      buildpack:                          # Build using buildpack. When zarvis.yaml is not exists, this is the default.
        builder: cloudfoundry/cnb:bionic  # Builder image. Default to 'cloudfoundry/cnb:bionic'.
        service: buildpack-service        # Service name, so ingress can connect. Defaults to 'buildpack-service'
        port: 8080                        # Port number to configure in the Service. Defaults to '8080'.
      docker:                             # Build Dockerfile and deploy.
        file: Dockerfile                  # locates the Dockerfile relative to workspace. Defaults to 'Dockerfile'.
        service: docker                   # Name of a Service to create, so ingress can connect. Defaults to 'docker'.
        port: 8000                        # Port number to configure in the Service. Defaults to '8000'.
      skaffold:                           # Run skaffold to deploy the project.
        file: skaffold.yaml               # locates the skaffold.yaml relative to workspace. Defaults to 'skaffold.yaml'.
        profile:                          # Name of a profile to use.
    ingress:                              # Ingress configures https endpoints.
    - service:                            # Name of a Service to connect.
      port:                               # Port number of the service.

deploy
------
    Precisely one of 'buildpack', 'dockerfile', 'skaffold' must be set.

ingress
-------
    Ingress creates https endpoint and connect your Service_.

zarvis.yaml examples
--------------------

Skaffold
========

Use 'skaffold.yaml' in the project root with default profile.

.. code-block:: yaml

    apiVersion: beta/v1
    deploy:
      skaffold: {}            # make sure empty object is assigned
    ingress:
      - serviceName: public   # name of a Kubernetes Service resource want to connect to public endpoint
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
      - serviceName: public
        port: 8080

Dockerfile
==========

Use 'Dockerfile' in the project root.

.. code-block:: yaml

    apiVersion: beta/v1
    deploy:
      dockerfile: {}          # make sure empty object is assigned.


For complete example, please see :doc:`examples`

.. include:: ../ref.rst