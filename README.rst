*******
Notejam
*******

**Repo notes**

A straight clone of the Django framework code modified for the demo.

**Changes:**

**infra_build.ps1**: Simple Az CLI to create suitable infrastructure, should really be Terraform but it gets the K8S cluster, DB and supporting infra spun up very simply.

**Dockerfile**: containerise the application

**requirements.txt**: added Python PGSQL reqs

**njtest-project.yaml**: kubernetes manifest, passes env variables in for data layer

========
Contacts
========

* Twitter: `@komarserjio <https://twitter.com/komarserjio>`_
* Email: komarserjio <at> gmail.com

=======
License
=======

MIT © Serhii Komar.

See `license <https://github.com/komarserjio/notejam/blob/master/license.rst>`_.
