# Longhorn

Open source distributed block storage system for Kubernetes.

## Details and Documentation

Documentation is [here](https://rancher.com/docs/k3s/latest/en/storage/)

Process
* Create a storage class for Longhorn and apply it
* apply your yaml to create the persistent volume claim and the pod (kubectl create -f YAML)


Example of storageclass.yaml
`
kind: StorageClass
apiVersion: storage.k8s.io/v1
metadata:
  name: longhorn
provisioner: driver.longhorn.io
allowVolumeExpansion: true
parameters:
  numberOfReplicas: "3"
  staleReplicaTimeout: "2880" # 48 hours in minutes
  fromBackup: ""
#  diskSelector: "ssd,fast"
#  nodeSelector: "storage,fast"
#  recurringJobs: '[{"name":"snap", "task":"snapshot", "cron":"*/1 * * * *", "retain":1},
#                   {"name":"backup", "task":"backup", "cron":"*/2 * * * *", "retain":1,
#                    "labels": {"interval":"2m"}}]'

`

Example of pvc.yaml
`
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: longhorn-volv-pvc
spec:
  accessModes:
    - ReadWriteOnce
  storageClassName: longhorn
  resources:
    requests:
      storage: 2Gi
`

Example of pod.yaml
`
apiVersion: v1
kind: Pod
metadata:
  name: volume-test
  namespace: default
spec:
  containers:
  - name: volume-test
    image: nginx:stable-alpine
    imagePullPolicy: IfNotPresent
    volumeMounts:
    - name: volv
      mountPath: /data
    ports:
    - containerPort: 80
  volumes:
  - name: volv
    persistentVolumeClaim:
      claimName: longhorn-volv-pvc
` 
