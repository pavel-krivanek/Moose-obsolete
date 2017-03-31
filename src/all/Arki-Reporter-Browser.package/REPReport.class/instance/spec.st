accessing
spec 
	| spec |
	spec := REPConcernSpecification on: self model.
	self build: spec.
	^ spec