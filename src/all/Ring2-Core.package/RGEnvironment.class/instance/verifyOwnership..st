utility
verifyOwnership: anRGObject

	"ignore unresolved values. TODO: check default values ownership?"
	anRGObject isRingResolved ifFalse: [ ^ self.].

	(anRGObject environment = self)
		ifFalse: [ RGWrongEnvironment signal ].