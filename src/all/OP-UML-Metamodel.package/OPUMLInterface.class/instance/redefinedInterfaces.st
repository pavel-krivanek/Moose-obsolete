accessing
redefinedInterfaces
	"References all the Interfaces redefined by this Interface."
	^ redefinedInterfaces ifNil: [ redefinedInterfaces := OrderedCollection new ]