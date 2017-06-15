visitor-double dispatching
createReferenceTo: aNamedEntity
	| ref |
	
	ref := FmxStReference new.
	ref source: self methodEntity ; target: (self resolveInstanceSide: aNamedEntity).
	^ ref