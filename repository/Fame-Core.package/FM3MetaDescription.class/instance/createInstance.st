instance creation
createInstance

	^implementingClass isNil
		ifTrue: [ FMRuntimeElement new description: self ]
		ifFalse: [ implementingClass new ]