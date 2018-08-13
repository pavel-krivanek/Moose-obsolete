tests
testBehaviorDefinitionModifiedForCategory

	| env announcements class | 
	
	env := RGEnvironment new.
	class := env ensureClassNamed: #SomeClass.
	
	announcements := OrderedCollection new.
	env announcer when: ClassModifiedClassDefinition do: [ :announcement |
		(announcement classAffected == class) ifTrue: [ 
			announcements add: announcement]].
	
	class category: 'some category'.
	self assert: announcements size equals: 1.
	
	
	
	