module "prod-eks-cluster" {
  source                      = "github.com/Sinovuyo96/cluster-001//terraform?ref=main"
 # terraform_state_bucket_name = "eks-application-state-bucket"
    
  # Networking configs
  vpc_id                      = "vpc-09d2f8c022beb848b"
  subnet_ids                  = ["subnet-06818b2329a21cd3a", "subnet-050899c116d3c8050", "subnet-01a6100db3bf27588"]
    
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
