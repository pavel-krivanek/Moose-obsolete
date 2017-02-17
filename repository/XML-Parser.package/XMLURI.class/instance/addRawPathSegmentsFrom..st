private
addRawPathSegmentsFrom: aURI
	"copy before modifying"
	self rawPathSegments: self rawPathSegments copy.

	aURI hasAbsolutePath
		ifTrue: [self removeRawPathSegments]
		ifFalse: [
			self hasNonDirectoryPath
				ifTrue: [
					self removeLastRawPathSegment.
					self hasPath
						ifTrue: [self haveDirectoryPath]]].

	aURI rawPathSegments do: [:each | self addRawPathSegment: each].