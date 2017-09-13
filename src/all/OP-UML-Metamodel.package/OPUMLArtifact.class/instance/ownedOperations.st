accessing
ownedOperations
	"The Operations defined for the Artifact. The association is a specialization of the ownedMember association."
	^ ownedOperations ifNil: [ ownedOperations := OrderedCollection new ]