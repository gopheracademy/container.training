# Control Plane

What is the control plane? How does it work?

---

## Control Plane
.interstitial[![Control Plane](images/control-plane/control-plane.png)]

---

## Etcd
.interstitial[![Etcd](images/control-plane/etcd.png)]

---

## API Server
.interstitial[![API Server](images/control-plane/api-server.png)]

---

## Service Broker
.interstitial[![Service Broker](images/control-plane/service-broker.png)]

---

## Controller Manager
.interstitial[![Controller Manager](images/control-plane/controller-manager.png)]

---
## Controller Manager
**Node Controller:** Responsible for noticing and responding when nodes go down.

**Replication Controller:** Responsible for maintaining the correct number of pods for every replication controller object in the system.

**Endpoints Controller:** Populates the Endpoints object (that is, joins Services & Pods).

**Service Account & Token Controllers:** Create default accounts and API access tokens for new namespaces.

---

## Cloud Controller Manager
**Node Controller:** For checking the cloud provider to determine if a node has been deleted in the cloud after it stops responding

**Route Controller:** For setting up routes in the underlying cloud infrastructure

**Service Controller:** For creating, updating and deleting cloud provider load balancers

**Volume Controller:** For creating, attaching, and mounting volumes, and interacting with the cloud provider to orchestrate volumes

---

## Prometheus Operator
.interstitial[![Prometheus Operator](images/control-plane/operator1.png)]

---

## Prometheus Operator
.interstitial[![Prometheus Operator](images/control-plane/operator2.png)]

---

## Scheduler
.interstitial[![Scheduler](images/control-plane/scheduler.png)]

---

## Kubelet
.interstitial[![Kubelet](images/control-plane/kubelet.png)]

---

## CNI
.interstitial[![CNI](images/control-plane/cni.png)]

---

## Kube Proxy
.interstitial[![Kube Proxy](images/control-plane/kube-proxy.png)]