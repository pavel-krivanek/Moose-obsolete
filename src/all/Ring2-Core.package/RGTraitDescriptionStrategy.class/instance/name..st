variables
name: aString

	| usersWithOldDefinition |

	usersWithOldDefinition := self users collect: [ :each | 
		each -> each copyForBehaviorDefinition ].

	super name: aString.
	
	usersWithOldDefinition do: [ :assoc |
		self announcer behaviorDefinitionChangedFrom: assoc value to: assoc key.
		self announcer behaviorModificationAppliedTo: assoc key. ].		