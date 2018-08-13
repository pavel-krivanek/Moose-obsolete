private - backend interface
pvtAddExtensionMethod: aMethodDefinition

	self environment verifyOwnership: aMethodDefinition.
	
	extensionMethods isRingResolved ifFalse: [ 
		self pvtCleanExtensionMethods  ].
	
	extensionMethods add: aMethodDefinition.
	
	"TODO:Announce"
	
	