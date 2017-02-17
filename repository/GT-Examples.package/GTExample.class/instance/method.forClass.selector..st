DEPRECATED
method: aGTExampleMethodClass forClass: aClass selector: aSelector
	self deprecated: 'use GTExampleMethodResolver instead'.
	^ self methodResolver resolve: aGTExampleMethodClass example: self className: aClass meta: aClass isMeta selector: aSelector