count=$(grep -i eksctl-capstone-divya-cluster output.txt | wc -l)
if [[ $count -gt 0 ]]
    then 
    echo "Skipping Cluster creation .. Infrastructure Exists"
    else
    echo "Creatiing AWS Kubernetes cluster"
    eksctl create cluster --name capstone-divya --version 1.19 --region $AWS_DEFAULT_REGION --nodegroup-name linux-nodes --nodes 3  --nodes-min 1 --nodes-max 4 --managed
fi
