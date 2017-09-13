accessing
ownedStereotypes
	"References the Stereotypes that are owned by the Package."
	^ ownedStereotypes ifNil: [ ownedStereotypes := OrderedCollection new ]