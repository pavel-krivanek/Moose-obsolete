accessing
ownedComments
	"The Comments owned by this Element."
	^ ownedComments ifNil: [ ownedComments := OrderedCollection new ]