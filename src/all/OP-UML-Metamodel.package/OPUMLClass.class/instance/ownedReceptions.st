accessing
ownedReceptions
	"The Receptions owned by the Class."
	^ ownedReceptions ifNil: [ ownedReceptions := OrderedCollection new ]