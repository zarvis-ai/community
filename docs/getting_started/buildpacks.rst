===============================
Getting started with Buildpacks
===============================

When your project does not have skaffold.yaml_ or Dockerfile_,
Zarvis automatically builds the project using Buildpacks_. 

#. Connect your Github project.
#. Select a branch and deploy in the 'Deploy' tab.
#. Zarvis automatically builds and deploys to staging.
#. Optionally, promote to production and get production url.
#. Optionally, configure access control in 'Setting' tab.

Default builder is `heroku/buildpacks:18`. This builder includes Buildpacks:

.. code-block:: none

    heroku/java
    heroku/ruby
    heroku/procfile
    heroku/python
    heroku/gradle
    heroku/php
    heroku/go
    heroku/nodejs

You can configure other builders in :ref:`zarvis.yaml`, such as `cloudfoundry/cnb:cflinuxfs3` that includes Buildpacks:

.. code-block:: none

    org.cloudfoundry.node-engine
    org.cloudfoundry.npm
    org.cloudfoundry.yarn
    org.cloudfoundry.python
    org.cloudfoundry.pip
    org.cloudfoundry.pipenv
    org.cloudfoundry.conda
    org.cloudfoundry.go-compiler
    org.cloudfoundry.go-mod
    org.cloudfoundry.dep
    org.cloudfoundry.php-dist
    org.cloudfoundry.php-composer
    org.cloudfoundry.httpd
    org.cloudfoundry.nginx
    org.cloudfoundry.php-web
    org.cloudfoundry.openjdk
    org.cloudfoundry.buildsystem
    org.cloudfoundry.jvmapplication
    org.cloudfoundry.azureapplicationinsights
    org.cloudfoundry.debug
    org.cloudfoundry.googlestackdriver
    org.cloudfoundry.jmx
    org.cloudfoundry.procfile
    org.cloudfoundry.dotnet-core-conf
    org.cloudfoundry.archiveexpanding
    org.cloudfoundry.tomcat
    org.cloudfoundry.jdbc
    org.cloudfoundry.springautoreconfiguration
    org.cloudfoundry.springboot
    org.cloudfoundry.distzip

.. include:: ../ref.rst