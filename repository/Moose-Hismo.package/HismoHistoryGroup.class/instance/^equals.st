public interface
= aHistoryGroup
	
	| aHistoryCollection anotherHistoryCollection |
	(self class = aHistoryGroup class) ifFalse: [^ false].
	aHistoryCollection := self referenceVersions.
	anotherHistoryCollection := aHistoryGroup referenceVersions.
	aHistoryCollection size = anotherHistoryCollection size ifFalse: [^false].
	aHistoryCollection
		do: [:each | (anotherHistoryCollection includes: each) ifFalse: [^false]].
	^true