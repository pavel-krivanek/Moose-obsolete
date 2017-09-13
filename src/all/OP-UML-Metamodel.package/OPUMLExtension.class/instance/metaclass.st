operations
metaclass
	"The query metaclass() returns the metaclass that is being extended (as opposed to the extending stereotype)."
	
	"{OCL} result = (metaclassEnd().type.oclAsType(Class))"
	
	^ self metaclassEnd type
