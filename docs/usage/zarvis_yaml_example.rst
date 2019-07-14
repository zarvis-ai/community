============
Examples
============

deploy echo service using skaffold
----------------------------------

zarvis.yaml

.. code-block:: yaml

    apiVersion: beta/v1
    deploy:
      skaffold:
    ingress:
    - service: echo
      port: 8000

