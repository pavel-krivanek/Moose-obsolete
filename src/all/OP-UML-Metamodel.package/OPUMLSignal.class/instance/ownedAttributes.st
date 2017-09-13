accessing
ownedAttributes
	"The attributes owned by the Signal."
	^ ownedAttributes ifNil: [ ownedAttributes := OrderedCollection new ]