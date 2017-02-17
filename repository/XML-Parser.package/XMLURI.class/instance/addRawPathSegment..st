private
addRawPathSegment: aString
	aString = '.'
		ifTrue: [^ self addRawDotPathSegment].
	aString = '..'
		ifTrue: [^ self addRawDoubleDotPathSegment].

	self hasPath
		ifTrue: [
			(self hasDirectoryPath
				and: [self rawPathSegments size > 1])
				ifTrue: [self removeLastRawPathSegment]]
		ifFalse: [
			self hasHost
				ifTrue: [self rawPathSegments addLast: '']].

	self rawPathSegments addLast: aString.