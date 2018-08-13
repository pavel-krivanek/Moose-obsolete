tests
testBehaviorDefinitionModifiedForSuperclass

	| env announcements class superclass1 superclass2 | 
	
	env := RGEnvironment new.
	class := env ensureClassNamed: #SomeClass.
	superclass1 := env ensureClassNamed: #SomeSuperclass1.
	superclass2 := env ensureClassNamed: #SomeSuperclass2.
	
	class superclass: superclass1.
	
	announcements := OrderedCollection new.
	env announcer when: ClassModifiedClassDefinition do: [ :announcement |
		(announcement classAffected == class) ifTrue: [ 
			announcements add: announcement]].
	
	class name: #NewName.
	self assert: announcements size equals: 1.
	superclass1 name: #NewSuperclass1.
	self assert: announcements size equals: 2.
	class superclass: superclass2.
	self assert: announcements size equals: 3.
	
	
	
	
	