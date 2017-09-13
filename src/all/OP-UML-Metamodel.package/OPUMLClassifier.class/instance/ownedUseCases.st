accessing
ownedUseCases
	"The UseCases owned by this classifier."
	^ ownedUseCases ifNil: [ ownedUseCases := OrderedCollection new ]