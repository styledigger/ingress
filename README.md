### Setup Ingress Controller ###

The setup script is available at: [https://raw.githubusercontent.com/styledigger/ingress/master/create-ingress.sh](https://raw.githubusercontent.com/styledigger/ingress/master/create-ingress.sh) and can be executed directly. The script creates a namespace called *shared-ingress* and will create Ingress Controller resources within this namespace. If you need to change the namespace then modify NAMESPACE variable in [*create-ingress.sh*](https://raw.githubusercontent.com/styledigger/ingress/master/create-ingress.sh) script before execute. (To modify *create-ingress.sh* script use `git clone` to get local copy of the scripts and execute locally. Or fork the repository and modify using github Web UI. In case of last don't forget to modify `curl` command properly.)

	curl -LSs https://raw.githubusercontent.com/styledigger/ingress/master/create-ingress.sh | sh

If creating ingress in Oracle Container Engine for Kubernetes (OKE), you must grant cluster-admin role to user creating ingress first:

	kubectl create clusterrolebinding <give_it_some_name> --clusterrole=cluster-admin --user=<user_OCID>
