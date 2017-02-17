visitor-double dispatching
createReferenceTo: aNamedEntity
	| ref |
	
	ref := FAMIXReference new.
	ref source: self methodEntity ; target: (self resolveInstanceSide: aNamedEntity).
	^ ref