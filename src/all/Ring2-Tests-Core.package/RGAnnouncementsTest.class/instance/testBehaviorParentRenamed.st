tests
testBehaviorParentRenamed

	| env announcements class superclass | 
	
	env := RGEnvironment new.
	class := env ensureClassNamed: #SomeClass.
	superclass := env ensureClassNamed: #SomeSuperclass.
	
	class superclass: superclass.
	
	announcements := OrderedCollection new.
	env announcer when: ClassParentRenamed do: [ :announcement |
		(announcement classAffected == class) ifTrue: [ 
			announcements add: announcement]].
	
	class name: #NewName.
	self assert: announcements size equals: 0.
	superclass name: #NewSuperclass1.
	self assert: announcements size equals: 1.
	
	
	
	
	