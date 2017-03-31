*XPath-Core-converting
asXPathNodeSetPosition
	"this catches literal integer predicates used with #??"
	self isInteger
		ifTrue: [^ self].

	"Pharo/Squeak (but not GS) OrderedCollections, which XPathNodeSets
	use internally, round float indexes down to the nearest integer, which is
	not OK because the spec doesn't require it (and LibXML2 doesn't do it), so
	fractional, NaN, and infinite positions all have to be converted to an
	always out-of-bounds index"
	(self isNaN
		or: [self isInfinite])
		ifFalse: [| truncated |
			(truncated := self truncated) = self
				ifTrue: [^ truncated]].

	"always out-of-bounds"
	^ 0.