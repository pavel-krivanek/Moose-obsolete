ancestorsLabel
anscentorLabel
	anscentorLabel ifNil: [^OrderedCollection new].
	^ (anscentorLabel flatCollect: [:each | each]) asSet.