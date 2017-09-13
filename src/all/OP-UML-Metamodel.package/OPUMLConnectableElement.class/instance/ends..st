accessing
ends: aConnectorEnd
	"A set of ConnectorEnds that attach to this ConnectableElement."
	self ends
		removeAll;
		addAll: aConnectorEnd