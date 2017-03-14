DEPRECATED
method: aGTExampleMethodClass forClass: aClass selector: aSelector
	self deprecated: 'use GTExampleMethodResolver instead'.
	^ self methodResolverClass resolve: aGTExampleMethodClass example: self className: aClass meta: aClass isMeta selector: aSelector