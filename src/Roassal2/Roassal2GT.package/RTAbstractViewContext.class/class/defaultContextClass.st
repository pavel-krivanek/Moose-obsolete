context
defaultContextClass
	"Return the default context used by Glamour when no context is set"
	^ self withAllSubclasses detect: #isDefault