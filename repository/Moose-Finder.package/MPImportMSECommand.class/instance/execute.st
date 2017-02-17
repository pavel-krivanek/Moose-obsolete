hooks
execute
	[ 
	| model |
	model := MooseModel new.
	model importFromMSE.
	model notEmpty
		ifTrue: [ 
			model install.
			self addModel: model ] ] fork