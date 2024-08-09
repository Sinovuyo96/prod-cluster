module "prod-eks-cluster" {
  source                      = "github.com/Sinovuyo96/cluster-001//terraform?ref=main"
 # terraform_state_bucket_name = "eks-application-state-bucket"
    
  # Networking configs
  vpc_id                      = "vpc-086d0bf671c917401"
  subnet_ids                  = ["subnet-098d417e20e07c699", "subnet-0252b1ab57ac9739e"]
    
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
