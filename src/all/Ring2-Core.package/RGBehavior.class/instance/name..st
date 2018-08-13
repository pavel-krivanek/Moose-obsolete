accessing - backend
name: aString

	| oldName subclassesWithOldDefinitions |
	
	oldName := self name.
	
	subclassesWithOldDefinitions := (self subclasses reject: #isMeta) collect: [ :each | 
		each -> each copyForBehaviorDefinition ].
	
	self announceDefinitionChangeDuring: [ 
		super name: aString ].
	
	self announcer behaviorRenamed: self from: oldName.

	subclassesWithOldDefinitions do: [ :assoc |
		self announcer behaviorDefinitionChangedFrom: assoc value to: assoc key.
		self announcer behaviorModificationAppliedTo: assoc key.
		self announcer behaviorParentRenamed: assoc key from: oldName ].