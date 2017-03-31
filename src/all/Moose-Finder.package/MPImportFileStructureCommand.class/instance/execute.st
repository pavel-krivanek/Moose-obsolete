hooks
execute
	| model |
	model := MooseModel new.
	model importFileStructure.
	model notEmpty
		ifTrue: [ 
			model install.
			self addModel: model ]