private
escapesContentEntitiesWhenWriting
	self hasParent
		ifTrue: [^ self parent escapesContentEntitiesWhenWriting]
		ifFalse: [^ true] "default to escaping"