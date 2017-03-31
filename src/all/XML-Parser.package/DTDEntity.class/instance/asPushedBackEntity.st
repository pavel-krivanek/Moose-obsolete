converting
asPushedBackEntity
	^ self isParameter
		ifTrue: [XMLPushedBackParameterEntity entity: self]
		ifFalse: [XMLPushedBackGeneralEntity entity: self]