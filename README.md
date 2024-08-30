###  Amit Sides  (Devops Expert)
This is a repository to present the way I work as a devops and the tools and resources I see usefuly to any devops.

#### ./src  RESTFull API written in Python/Flask (Resfull api implements HTTP such as POST/PUT/HEAD/GET to manipulate the Model in MVC or MVVM)
#### Restful Sample
      GET - /api/Category - Retrieve all categories
      POST - /api/Category - Add a new category
      PUT - /api/Category - Update a category
      DELETE - /api/Category - Delete a category
      GET - /api/Comment - Retrieve all the stored comments
      POST - /api/Comment - Add new comment

#### ./terraform  containts resources for init/provision EKS with VPC ( https://developer.hashicorp.com/terraform/tutorials/kubernetes/eks )
#### ALB with terraform https://github.com/terraform-aws-modules/terraform-aws-alb
#### Route53 with Tf https://github.com/terraform-aws-modules/terraform-aws-route53/tree/master/examples/complete

#### ./Docker has multiple ways to write dockerfile for python apps (https://dev.to/isaackumi/dockerizing-a-flask-application-a-multi-stage-dockerfile-approach-389a)
#### ./actions github actions for Continus Integration ( https://docs.github.com/en/actions/automating-builds-and-tests/building-and-testing-python)

### ./Ingresses Conrtolers Istio/traefik 
Ingresses: https://aws.amazon.com/blogs/containers/exposing-kubernetes-applications-part-3-nginx-ingress-controller/

#### ./Chart HelmChart could be 
   5. automated with Helmify ( https://github.com/thedataincubator/flask-chart ) 
   6. see all templates: https://github.com/arttor/helmify/tree/main/examples/app/templates
   7. see operators: https://github.com/arttor/helmify/tree/main/examples/operator/templates
   6. using best practises    https://github.com/davidh83110/flask-k8s-helm/tree/master
#### Attached Traefik HelmChart (just edit values.yaml plug-n-play :) 
7.    See specifically for you remark on
#### IngressRoute is the CRD implementation of a Traefik HTTP Router.
8. 1. gateway.networking.k8s.io_httproutes.yaml
9. 2. gateway.networking.k8s.io_tlsroutes.yaml
#### Bonus ./boto3 ( ec2 + vpc full classes ) 

#### HTTPs goes  Route53/DNS >> AWS ALB >> Traefik-IngressRoute or Istio Gateways/Service Entry >> K8s Pods >> Contianer (Python Restful API running on gunicorn)
See also EKS ALB + ISTIO + TLS https://github.com/aws-samples/eks-alb-istio-with-tls

#### Resources

https://gateway.envoyproxy.io/docs/tasks/traffic/backend/

https://helm.sh/docs/chart_best_practices/custom_resource_definitions/

https://github.com/bitnami/charts/tree/main/bitnami

https://bitnami.com/stacks

https://github.com/traefik/traefik-helm-chart/tree/master

https://github.com/openfaas/faas-netes

https://github.com/istio/istio

https://istio.io/latest/docs/reference/config/networking/service-entry/

https://istio.io/latest/docs/concepts/traffic-management/#gateways

https://github.com/kubernetes/ingress-nginx




 
