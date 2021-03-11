count=`aws cloudformation list-exports|grep -i eksctl-capstone-divya-cluster|wc -l`
if [[ $count -gt 0 ]]
    then 
    echo "Skipping Cluster creation .. Infrastructure Exists"
    else
    echo "Creatiing AWS Kubernetes cluster"
    #eksctl create cluster --name capstone-divya --version 1.19 --region $AWS_DEFAULT_REGION --nodegroup-name UdacityCapstone --node-type t3.large --nodes-min 2 --nodes-max 4 --managed
fi
