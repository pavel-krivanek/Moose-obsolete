accessing
conformances: aProtocolConformance
	"Conformance between ProtocolStateMachine "
	self conformances
		removeAll;
		addAll: aProtocolConformance