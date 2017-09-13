accessing
ownedAttributes
	"The attributes or association ends defined for the Artifact. The association is a specialization of the ownedMember association."
	^ ownedAttributes ifNil: [ ownedAttributes := OrderedCollection new ]