============
zarvis.yaml
============

Place `zarvis.yaml`_ file in your Github project repository root.
This file tells how to build, deploy and serve the project.

Overview
--------

.. code-block:: yaml

    apiVersion: beta/v1
    deploy:                      # (Required) Precisely one of 'dockerfile', 'skaffold', 'exec' must be set.
      docker:                    # Build dockerfile and deploy.
        file: Dockerfile         # locates the Dockerfile relative to workspace. Defaults to 'Dockerfile'.
        service: docker          # Name of the Service to create, so ingress can connect. Defaults to 'docker'.
        port: 8000               # Port number to configure in the Service. Defaults to '8000'.
      skaffold:                  # Run skaffold to deploy project.
        file: skaffold.yaml      # locates the skaffold.yaml relative to workspace. Defaults to 'skaffold.yaml'.
        profile:                 # Name of a profile to use.
      exec:                      # Manual deploy command.
        command:                 # (Required) Command to run.
        args:                    # Argument list.
    ingress:                     # Ingress configures https endpoints.
    - service:                   # Name of Service to connect.
      port:                      # Port number of the service.
    auth:                        # https endpoints authentication.
      type: ANON                 # ANON or ZARVIS. Defaults to 'ANON'.

deploy
------
    Precisely one of 'dockerfile', 'skaffold', 'exec' must be set.

ingress
-------
    Ingress creates https endpoint and connect your Service_.


auth
----

type
````

ANON
  Accept any clients.

ZARVIS
  Accept clients logged in zarvis.ai_.

    
   

.. include:: ../ref.rst