Class {
	#name : #MooseFinderForSimpleClassesTest,
	#superclass : #MooseFinderTest,
	#category : #'Moose-Tests-Finder'
}

{ #category : #running }
MooseFinderForSimpleClassesTest >> buildModel [ 
	| class1 m1 m2 m3 class2 m4 m5 m6 class3 m7 m8 m9 famixInheritance |
	model := MooseModel new.
	class1 := FmxNGClass new.
	class1 name: 'A'.
	class1
		addMethod: (m1 := FmxNGMethod new name: 'name1'; signature: 'name1');
		addMethod: (m2 := FmxNGMethod new name: 'name2'; signature: 'name2');
		addMethod: (m3 := FmxNGMethod new name: 'name3'; signature: 'name3').

	class2 := FmxNGClass new.
	class2 name: 'B'.
	class2
		addMethod: (m4 := FmxNGMethod new name: 'name1'; signature: 'name1');
		addMethod: (m5 := FmxNGMethod new name: 'name2'; signature: 'name2');
		addMethod: (m6 := FmxNGMethod new name: 'name3'; signature: 'name3').

	class3 := FmxNGClass new.
	class3 name: 'C'.
	class3
		addMethod: (m7 := FmxNGMethod new name: 'name1'; signature: 'name1');
		addMethod: (m8 := FmxNGMethod new name: 'name2'; signature: 'name2');
		addMethod: (m9 := FmxNGMethod new name: 'name3'; signature: 'name3').

	famixInheritance := FmxNGInheritance new
			subclass: class3;
			superclass: class2.
	class3 addSuperInheritance: famixInheritance.

	model addAll: {class1 . class2 . class3 . m1 . m2 . m3 . m4 . m5 . m6 . m7 . m8 .m9 }.
	^ model
]
