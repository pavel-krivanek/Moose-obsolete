DEPRECATED
method: aMethodClass forClassNamed: aClassOrClassName selector: aSelector
	self deprecated: 'use GTExampleMethodResolver instead'.
	^ self methodResolver resolve: aMethodClass example: self className: aClassOrClassName meta: false " lucky guess " selector: aSelector