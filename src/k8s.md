% Kubernetes

## Batch Processing vs. Micro Services

One of the things I learned the hard way about K8s is that it is primarily designed to keep micro services running.  If you have a batch processing job that runs for a long time you will have a bad time. I joined the team after much of the AI Cloud infrastructure was already in place and I was very new to K8s when I joined so I had a steep learning curve ahead of me.

While I was learning the whole platform I started to encounter unexplained failure modes for some of the data pipelines in the system.  It was rare but it was happening.  The symptom was that a batch job that was meant to run only once, seemed to be started twice but only complete once.  This was a real head scratcher.  If the job was idempotent it wasn't a big deal but if it wasn't then the data was corrupted.

It took a long time to figure out the GKE autoscaler was triggering the removal of the node hosting the batch job's pod.  The autoscaler was doing its job and removing nodes that were under utilized.  But the batch job pods were not ready to be stopped.  A batch processing system needs the jobs to complete without interruption.  Whereas a micro service can be stopped and started at any time on any node without any loss of data.  In fact that is the whole point of micro services, to be able to scale up and down without any loss of data.

So, how do you run a batch processing job on K8s?  The trick is in adding Tolerations to the pod spec so that the pod is not automatically shut down and moved when the node has the No Schedule Taint.  This allows the pod to continue to run and prevents the autoscaler from removing the node until the pod execution is complete.

Simple, but not obvious.

[Back](index.html)
