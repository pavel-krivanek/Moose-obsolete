accessing
receiverSourceCode: aString
	"CyrilFerlicot: Deprecated the 19 sept 2017"

	self
		deprecated:
			'The source code of the receiver should not be saved as a property. Instead access it via the receiver entity and it should be created as a sourceAnchor in the receiver.'