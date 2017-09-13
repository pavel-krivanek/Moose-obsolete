accessing
ownedReceptions
	"Receptions that objects providing this Interface are willing to accept."
	^ ownedReceptions ifNil: [ ownedReceptions := OrderedCollection new ]