private
hyphenatedNameFromClassNameSegments: aNameSegmentCollection
	^ String streamContents: [:stream |
		aNameSegmentCollection
			do: [:each | stream nextPutAll: each asLowercase]
			separatedBy: [stream nextPut: $-]]