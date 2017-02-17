*XPath-Core-converting
asXPathNodeSetPosition
	"Do not round node set positions up or down implicitly.
	The spec doesn't require it and LibXML2 doesn't do it."
	self isInteger
		ifTrue: [^ self].
	(self isNaN
		or: [self isInfinite
			or: [self fractionPart isZero not]])
		ifTrue: [^ 0].
	^ self asInteger.