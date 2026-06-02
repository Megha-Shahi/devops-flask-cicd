vi cluster_setupMaster.sh
chmod +x cluster_setupMaster.sh
./cluster_setupMaster.sh master
kubectl get nodes
kubectl apply -f https://raw.githubusercontent.com/Megha-Shahi/k8s/refs/heads/main/kubernete-dashboard.yml
kubectl get ns
kubectl describe kubernetes-dashboard
kubectl describe ns  kubernetes-dashboard
kubectl describe ns kubernetes-dashboard
kubectl get all -nkubernetes-dashboard
kubectl get nodes
kubectl get storageclass
kubectl create namespace storage-lab
vi staticpv.yaml
kubectl apply -f static-pv.yaml
kubectl apply -f staticpv.yaml
vi staticpv.yaml
kubectl apply -f staticpv.yaml
vi staticpv.yaml
kubectl apply -f staticpv.yaml
vi staticpv.yaml
kubectl apply -f staticpv.yaml
vi staticpv.yaml
kubectl apply -f staticpv.yaml
vi static-pvc.yaml
kubectl apply -f static-pvc.yaml
vi static-pvc.yaml
kubectl apply -f static-pvc.yaml
kubectl get pvc
kubectl get pv
kubectl get pvc
kubectl get pv
vi pod-using-pvc.yaml
kubectl apply -f pod-using-pvc.yaml
vi pod-using-pvc.yaml
kubectl apply -f pod-using-pvc.yaml
kubectl get pod
kubectl describe pod
kubectl get pod
kubectl describe pod
kubectl get pod
kubectl describe pod
kubectl get pod
kubectl exec -it pvc-test-pod
kubectl exec -it pvc-test-pod bash
kubectl exec -it pvc-test-pod -- bbash
kubectl exec -it pod  pvc-test-pod -- bbash
kubectl exec -it pod pvc-test-pod bash
kubectl exec -it pods pvc-test-pod bash
kubectl exec -it pods pvc-test-pod --bash
kubectl exec -it pvc-test-pod --/bin/bash
kubectl exec -it pvc-test-pod -- /bin/bash
kubectl exec -it pvc-test-pod -- /bin/sh
kubectl exec -it pvc-tets-pod -- /bin/sh
cd /data
kubectl exec -it pvc-tets-pod -- /bin/sh
kubectl get pods
kubectl get ns
kubectl exec -it pvc-tets-pod -- /bin/sh
kubectl config view
kubectl config current-context
kubectl config get-contexts
kubectl get pods
kubectl delete pods pvc-test-pod
kubectl delete pods pvc-tets-pod
kubectl get volumes
kubectl get volume
kubectl get pv
kubectl delete pv static-pv-demo
kubectl get pv
kubectl delete pv static-pv-demo
kubectl create namespace context-lab
kubectl get ns
kubectl delete ns storage-lab
kubectl get pv
kubectl get pvc
kubectl delete pvc static-pv-demo
kubectl delete pvc static-pvc-demo
kubectl get pv
vi sa.yaml
kubectl apply -f sa.yaml
kubectl get sa -n context-lab
vi role.yaml
kubectl apply -f role.yaml
kubectl describe role pod-reader-role -n context-lab
vi rolebinding.yaml
kubectl apply -f rolebinding.yaml
kubectl describe rolebinding pod-reader-binding -n context-lab
kubectl auth can-i list pods --as=system:serviceaccount:context-lab:external-user -n context-lab
kubectl auth can-i list pods --as=system:serviceaccount:context-lab:external-user -n default
vi sa-token-secret.yaml
kubectl apply -f sa-token-secret.yaml
kubectl get secret -n context-lab
kubectl get secret external-user-token -n context-lab -o jsonpath='{.data.token}' | base64 -d
kubectl cluster-info
kubectx
kubectl get pods -A | grep ebs
kubectl get csidrivers
kubectl apply -k "github.com/kubernetes-sigs/aws-ebs-csi-driver/deploy/kubernetes/overlays/stable/?ref=master"
kubectl get pods -n kube-system | grep ebs
kubectl get csidrivers
kubectl get -A
kubectl get all -A
kubectl apply -k "github.com/kubernetes-sigs/aws-ebs-csi-driver/deploy/kubernetes/overlays/stable/?ref=master"
kubectl get pods -n kube-system | grep ebs
kubectl get csidrivers
vi ebs-sc.yaml
kubectl apply -f ebs-sc.yaml
vi ebs-sc.yaml
kubectl apply -f ebs-sc.yaml
vi ebs-pvc.yaml
kubectl apply -f ebs-pvc.yaml
vi ebs-pvc.yaml
kubectl apply -f ebs-pvc.yaml
kubectl get pvc
kubectl get pv
kubectl get pvc
vi ebs-pod.yaml
kubectl apply -f ebs-pod.yaml
kubectl get pvc
kubectl get pvc ebs-dynamic-pvc
kubectl describe pvc ebs-dynamic-pvc
kubectl describe pod ebs-test-pod
kubectl rollout restart deployment ebs-csi-controller -n kube-system
kubectl describe pvc ebs-dynamic-pvc
kubectl get pvc ebs-dynamic-pvc
kubectl rollout restart deployment ebs-csi-controller -n kube-system
kubectl get pvc ebs-dynamic-pvc
kubectl logs -n kube-system deployment/ebs-csi-controller -c ebs-plugin --tail=50
kubectl get pod -n kube-system -o wide | grep ebs-csi-controller
kubectl rollout restart deployment ebs-csi-controller -n kube-system
kubectl get pods -n kube-system | grep ebs
kubectl delete pod ebs-test-pod
kubectl apply -f ebs-pod.yaml
kubectl get pvc
kubectl get pv
kubectl get pod
kubectl describe pod -n kube-system ebs-csi-controller-84d8764cc-6cvn5
kubectl get pods -n kube-system | grep ebs-csi-controller
kubectl describe pod -n kube-system ebs-csi-controller-848d764cc-6cvn5
kubectl delete -k "github.com/kubernetes-sigs/aws-ebs-csi-driver/deploy/kubernetes/overlays/stable/?ref=master"
kubectl get nodes
kubectl version --short
kubectl version
kubectl apply -k "github.com/kubernetes-sigs/aws-ebs-csi-driver/deploy/kubernetes/overlays/stable/ecr/?ref=release-1.60"
kubectl get pods -n kube-system | grep ebs
kubectl get csidrivers
kubectl get pods -n kube-system | grep ebs
kubectl describe pod -n kube-system ebs-csi-controller-65548946cb-2qbrh
kubectl describe pod -n kube-system ebs-csi-node-4lxpl
kubectl delete -k "github.com/kubernetes-sigs/aws-ebs-csi-driver/deploy/kubernetes/overlays/stable/ecr/?ref=release-1.60"
kubectl apply -k "github.com/kubernetes-sigs/aws-ebs-csi-driver/deploy/kubernetes/overlays/stable/?ref=release-1.60"
kubectl get pods -n kube-system | grep ebs
kubectl logs -n kube-system ebs-csi-controller-6dd584678b-9k4nl -c ebs-plugin
kubectl get nodes -o wide
curl -k https://172.31.45.134:10250/healthz
