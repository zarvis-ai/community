===============
Quotas & limits
===============

Z.A.R.V.I.S. limits resource allocation and use, and enforces appropriate quotas on a per-project basis.
Subject to change without notice.

Deploy
------

===========================  ========================================== =====
Resource                     Hacker                                     Pro
===========================  ========================================== =====
Branches                     2 / Project                                10 / Project
Memory                       512MB / Branch                             TBD
CPU                          0.5 vCPU / Branch                          TBD
Container memory             64MB (min), 4GB (max)                      TBD
Container cpu                0.01 vCPU (min), 2 vCPU (max)              TBD
k8s Pods                     6 / Branch                                 TBD
k8s Services                 3 / Branch                                 TBD
k8s Replication controller   3 / Branch                                 TBD
k8s Configmaps               10 / Branch                                TBD
k8s Secrets                  10 / Branch                                TBD
===========================  ========================================== =====


Build
-----

===================================  ======
Resource                             Limit
===================================  ======
Number of tasks                      5 concurrent build task / Project
Task tiemout                         50 minutes / Build task
Memory                               3 GB  / Build task
CPU                                  1 / Build task
===================================  ======
