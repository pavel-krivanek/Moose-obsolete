announcements
announceDefinitionChangeDuring: aBlock

	| oldVersion |

	self announcer isSuspended ifTrue: [ 
		aBlock value. 
		^ self ]	.
		
	self announcer  suspendAllWhile: [ 
		oldVersion := self copyForBehaviorDefinition.].
	aBlock value.
	self announcer 	behaviorDefinitionChangedFrom: oldVersion to: self.
	self announcer behaviorModificationAppliedTo: self.

	
	