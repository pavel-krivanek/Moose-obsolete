tests
testActiveMarkupWriterWithAncestorsDo
	| writer enumerated oneTagWriter twoTagWriter threeTagWriter |

	writer := XMLWriter new.
	enumerated := OrderedCollection new.
	self
		should: [:block | writer activeMarkupWriterWithAncestorsDo: block]
		enumerate: enumerated.

	enumerated addFirst: writer xml.
	self
		should: [:block | writer activeMarkupWriterWithAncestorsDo: block]
		enumerate: enumerated.

	oneTagWriter := writer tag: 'one'.
	enumerated
		removeFirst;
		addFirst: oneTagWriter.
	self
		should: [:block | writer activeMarkupWriterWithAncestorsDo: block]
		enumerate: enumerated.

	oneTagWriter with: [
		twoTagWriter := writer tag: 'two'.
		enumerated addFirst: twoTagWriter.
		self
			should: [:block | writer activeMarkupWriterWithAncestorsDo: block]
			enumerate: enumerated.

		twoTagWriter with: [
			threeTagWriter := writer tag: 'three'.
			enumerated addFirst: threeTagWriter.
			self
				should: [:block | writer activeMarkupWriterWithAncestorsDo: block]
				enumerate: enumerated.
			
			threeTagWriter write.
			enumerated removeFirst.
			self
				should: [:block | writer activeMarkupWriterWithAncestorsDo: block]
				enumerate: enumerated].

		enumerated removeFirst.
		self
			should: [:block | writer activeMarkupWriterWithAncestorsDo: block]
			enumerate: enumerated].

	enumerated removeFirst.
	self
		should: [:block | writer activeMarkupWriterWithAncestorsDo: block]
		enumerate: enumerated.