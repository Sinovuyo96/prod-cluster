module "prod-eks-cluster" {
  source                      = "github.com/dev/cluster-001//terraform?ref=main"
  terraform_state_bucket_name = "eks-application-state-bucket"
    
  # Networking configs
  vpc_id                      = "vpc-0c4ac17b9ad91e24c"
  subnet_ids                  = ["subnet-0ca21c3f8e232c98e", "subnet-0b3ee1dc5ed66fecf"]
    
  # eks cluster settings      
  cluster_name                = "prod-cluster"
  node_group_name             = "prod-node-group-002"
  
  # ingress alb service account
#  aws_alb_serv_account_name   = "aws-load-balancer-controller"
#  namespace                   = "kube-system"
#  role_name                   = "AmazonEKSLoadBalancerControllerRole"
#  svc_acc_policy              = "AWSLoadBalancerControllerIAMPolicy"
}
