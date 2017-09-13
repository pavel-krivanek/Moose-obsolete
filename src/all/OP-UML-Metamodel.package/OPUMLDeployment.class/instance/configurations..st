accessing
configurations: aDeploymentSpecification
	"The specification of properties that parameterize the deployment and execution of one or more Artifacts."
	self configurations
		removeAll;
		addAll: aDeploymentSpecification