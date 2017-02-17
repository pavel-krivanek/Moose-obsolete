DEPRECATED
method: aMethodClass forClass: aClass named: aClassName selector: aSelector
	self deprecated: 'use GTExampleMethodResolver instead'.
	^ self methodResolver resolve: aMethodClass example: self className: (aClass ifNotNil: [ aClass name ] ifNil: [ aClassName ]) meta: (aClass ifNotNil: [ aClass isMeta ] ifNil: [ false " lucky guess " ]) selector: aSelector