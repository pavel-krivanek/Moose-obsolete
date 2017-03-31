tests
testActiveMarkupWriterAncestorsDo
	| writer enumerated oneTagWriter twoTagWriter threeTagWriter |

	writer := XMLWriter new.
	enumerated := OrderedCollection new.
	self
		should: [:block | writer activeMarkupWriterAncestorsDo: block]
		enumerate: enumerated.

	writer xml.
	self
		should: [:block | writer activeMarkupWriterAncestorsDo: block]
		enumerate: enumerated.

	oneTagWriter := writer tag: 'one'.
	self
		should: [:block | writer activeMarkupWriterAncestorsDo: block]
		enumerate: enumerated.

	oneTagWriter with: [
		twoTagWriter := writer tag: 'two'.
		enumerated addFirst: oneTagWriter.
		self
			should: [:block | writer activeMarkupWriterAncestorsDo: block]
			enumerate: enumerated.

		twoTagWriter with: [
			threeTagWriter := writer tag: 'three'.
			enumerated addFirst: twoTagWriter.
			self
				should: [:block | writer activeMarkupWriterAncestorsDo: block]
				enumerate: enumerated.
			
			threeTagWriter write.
			enumerated removeFirst.
			self
				should: [:block | writer activeMarkupWriterAncestorsDo: block]
				enumerate: enumerated]].

	enumerated removeFirst.
	self
		should: [:block | writer activeMarkupWriterAncestorsDo: block]
		enumerate: enumerated.