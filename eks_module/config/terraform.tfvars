
aws_eks_cluster_config = {

      "demo-cluster" = {

        eks_cluster_name         = "demo-cluster1"
        eks_subnet_ids = ["subnet-05a47ba3a8a771857","subnet-02dbdefc7ca3de015","subnet-0f28f777048015ecc"]
        tags = {
             "Name" =  "demo-cluster"
         }  
      }
}

eks_node_group_config = {

  "node1" = {

        eks_cluster_name         = "demo-cluster"
        node_group_name          = "myeksnode"
        nodes_iam_role           = "eks-node-group-general1"
        node_subnet_ids          = ["subnet-05a47ba3a8a771857","subnet-02dbdefc7ca3de015","subnet-0f28f777048015ecc"]

        tags = {
             "Name" =  "node1"
         } 
  }
}
