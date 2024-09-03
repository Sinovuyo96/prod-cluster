module "prod-eks-cluster" {
  source                      = "github.com/Sinovuyo96/cluster-001//terraform?ref=main"
 # terraform_state_bucket_name = "eks-application-state-bucket"
    
  # Networking configs
  vpc_id                      = "vpc-0910057f8db5e2453"
  subnet_ids                  = ["subnet-0043756eefc351e8b", "subnet-0ffd5acfffe44d1e6", "subnet-01d267a6bede2e16d"]
    
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
