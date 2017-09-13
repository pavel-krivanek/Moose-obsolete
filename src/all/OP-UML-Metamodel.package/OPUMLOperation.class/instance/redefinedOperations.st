accessing
redefinedOperations
	"The Operations that are redefined by this Operation."
	^ redefinedOperations ifNil: [ redefinedOperations := OrderedCollection new ]