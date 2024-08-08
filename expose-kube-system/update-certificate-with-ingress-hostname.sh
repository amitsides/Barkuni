# Verify SAN of current APIServer certificate
openssl x509 -in /etc/kubernetes/pki/apiserver.crt -text
# Retrieve current kubeadm-config
kubectl -n kube-system get configmap kubeadm-config -o jsonpath='{.data.ClusterConfiguration}' > kubeadm-original.yaml
cp kubeadm-original.yaml kubeadm-latest.yaml
# Add extra SANs
vi kubeadm-latest.yaml
cat kubeadm-latest.yaml
apiServer:
  certSANs:
    - "api.devops.example.com"
    - "kapi.company.org"
  extraArgs:
 ....
# remove current apiserver certificates
mv /etc/kubernetes/pki/apiserver.{crt,key} ~
# regenerate apiserver certificates
kubeadm init phase certs apiserver --config kubeadm-latest.yaml
# restart api server
docker kill $(docker ps | grep kube-apiserver | grep -v pause | awk '{print $1}')
# verify again the SAN is in the certificate
openssl x509 -in /etc/kubernetes/pki/apiserver.crt -text
# update configmap in kube-system
kubeadm init phase upload-config kubeadm --config ./kubeadm-latest.yaml