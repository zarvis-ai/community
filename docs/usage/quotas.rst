===============
Quotas & limits
===============

Z.A.R.V.I.S. limits resource allocation and use, and enforces appropriate quotas on a per-project basis.
Subject to change without notice.

Deploy
------

===========================  ======
Resource                     Limit
===========================  ======
Deployed branches            5 per Github project
Number of Pods               5 per branch
Number of Ingress endpoints  5 per branch
Memory                       2 GB per branch
CPU                          2 per branch
===========================  ======


Build
-----

===================================  ======
Resource                             Limit
===================================  ======
Number of tasks                      5 concurrent build task per project
Task tiemout                         50 minutes per build task
Memory                               3 GB per build task
CPU                                  1 per build task
===================================  ======
