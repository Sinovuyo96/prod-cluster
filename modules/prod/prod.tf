module "prod-eks-cluster" {
  source                      = "github.com/Sinovuyo96/cluster-001//terraform?ref=main"
 # terraform_state_bucket_name = "eks-application-state-bucket"
    
  # Networking configs
  vpc_id                      = "vpc-0a056f07682b30de9"
  subnet_ids                  = ["subnet-02241e39249eeb79a", "subnet-08b0dd570a4f310e6"]
    
  # eks cluster settings      
  cluster_name                = "prod-cluster-002"
  node_group_name             = "prod-node-group-002"
  clw-logs                    = "eks-cluster-logs"
  
  # ingress alb service account
#  aws_alb_serv_account_name   = "aws-load-balancer-controller"
#  namespace                   = "kube-system"
#  role_name                   = "AmazonEKSLoadBalancerControllerRole"
#  svc_acc_policy              = "AWSLoadBalancerControllerIAMPolicy"
}
