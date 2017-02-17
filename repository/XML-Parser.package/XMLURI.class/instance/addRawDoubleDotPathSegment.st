private
addRawDoubleDotPathSegment
	self hasPath
		ifFalse: [^ self].

	self hasRootPath
		ifTrue: [self removeRawPathSegments]
		ifFalse: [| hadAbsolutePath |
			hadAbsolutePath := self hasAbsolutePath.
			self hasDirectoryPath
				ifTrue: [self removeLastRawPathSegment].
			self hasPath
				ifTrue: [
					self removeLastRawPathSegment.
					(self hasPath
						or: [hadAbsolutePath])
						ifTrue: [self haveDirectoryPath]]].