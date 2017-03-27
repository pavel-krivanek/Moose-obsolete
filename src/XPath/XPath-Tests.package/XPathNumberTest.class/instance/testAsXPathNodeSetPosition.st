tests
testAsXPathNodeSetPosition
	-10 to: 10 do: [:i | | position |
		position := i asXPathNodeSetPosition.
		self
			assert: position = i;
			assert: position isInteger.

		position := i asFloat asXPathNodeSetPosition.
		self
			assert: position = i;
			assert: position isInteger].

	"Pharo/Squeak (but not GS) OrderedCollections, which XPathNodeSets
	use internally, round float indexes down to the nearest integer, which is
	not OK because the spec doesn't require it (and LibXML2 doesn't do it), so
	fractional, NaN, and infinite positions all have to be converted to an
	always out-of-bounds index"
	-10.5 to: 10.5 do: [:i | | position |
		position := i asXPathNodeSetPosition.
		self
			assert: position isZero;
			assert: position isInteger].
	(Array
		with: Float nan
		with: Float infinity
		with: Float xpathNegativeInfinity
		with: Float xpathNegativeZero)
		do: [:each | | position |
			position := each asXPathNodeSetPosition.
			self
				assert: position isZero;
				assert: position isInteger].