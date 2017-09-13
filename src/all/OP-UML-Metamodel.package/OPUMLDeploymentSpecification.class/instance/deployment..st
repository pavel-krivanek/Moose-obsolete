accessing
deployment: aDeployment
	"The deployment with which the DeploymentSpecification is associated."
	deployment := OPUMLToOneLink
		on: self identity
		update: #configurations
		from: deployment
		to: aDeployment