DEPRECATED
method: aMethodClass forSelector: aSelector
	self deprecated: 'use GTExampleMethodResolver instead'.
	self method: aMethodClass forClass: self methodClass selector: aSelector
	