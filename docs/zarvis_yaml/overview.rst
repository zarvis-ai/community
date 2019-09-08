=====================
zarvis.yaml Overview
=====================

Zarvis read `zarvis.yaml` file in the repository root if exists.
The file can have more detailed configuration of build, deploy.

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

    Currently 'kubectl' is supported when using 'skaffold'. 'helm' and 'kustomize' support are coming soon.

ingress
-------
    Ingress creates https endpoint and connect your Service_.

.. include:: ../ref.rst