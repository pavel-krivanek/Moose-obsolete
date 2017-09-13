accessing
role: aConnectableElement
	"The ConnectableElement attached at this ConnectorEnd. When an instance of the containing Classifier is created, a link may (depending on the multiplicities) be created to an instance of the Classifier that types this ConnectableElement."
	role := OPUMLToOneLink
		on: self identity
		update: #ends
		from: role
		to: aConnectableElement