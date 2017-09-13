accessing
location: aDeploymentTarget
	"The DeployedTarget which is the target of a Deployment."
	location := OPUMLToOneLink
		on: self identity
		update: #deployments
		from: location
		to: aDeploymentTarget