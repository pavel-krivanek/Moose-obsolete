accessing
deployments: aDeployment
	"The set of Deployments for a DeploymentTarget."
	self deployments
		removeAll;
		addAll: aDeployment