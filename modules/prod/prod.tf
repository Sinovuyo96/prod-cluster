module "prod-eks-cluster" {
  source                      = "github.com/Sinovuyo96/cluster-001//terraform?ref=main"
  terraform_state_bucket_name = "eks-application-state-bucket-us-east-1"
    
  # Networking configs
  vpc_id                      = "vpc-0385ea3024f3ae4b9"
  subnet_ids                  = ["subnet-0b1e7f1454f06cb6d", "subnet-059c8e094ccf3c501"]
    
  # eks cluster settings      
  cluster_name                = "prod-cluster-002"
  node_group_name             = "prod-node-group-002"
  
  # ingress alb service account
#  aws_alb_serv_account_name   = "aws-load-balancer-controller"
#  namespace                   = "kube-system"
#  role_name                   = "AmazonEKSLoadBalancerControllerRole"
#  svc_acc_policy              = "AWSLoadBalancerControllerIAMPolicy"
}
