defaults
defaultMergeClassAndMetaclass
	
	DefaultMergeClassAndMetaclass isNil
		ifTrue: [DefaultMergeClassAndMetaclass := false].
	^DefaultMergeClassAndMetaclass