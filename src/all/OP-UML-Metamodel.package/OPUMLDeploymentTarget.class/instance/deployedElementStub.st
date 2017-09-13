operations - stubs
deployedElementStub
	"Derivation for DeploymentTarget::/deployedElement"
	
	"{OCL} result = (deployment.deployedArtifact->select(oclIsKindOf(Artifact))->collect(oclAsType(Artifact).manifestation)->collect(utilizedElement)->asSet())"
	
	self notYetImplemented
