
#!/bin/bash
images=(kube-controller-manager:v1.12.2 kube-apiserver:v1.12.2 kube-scheduler:v1.12.2 kube-proxy:v1.12.2 pause:3.1 etcd:3.2.24 coredns:1.2.2)
for image in ${images[@]}
do
	docker pull shayu/$image
	docker tag shayu/$image gcr.io/google_containers/$image
	docker rmi shayu/$image
done
