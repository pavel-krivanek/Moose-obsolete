tests
testDelete

	"Raise an error since it is not in the root"
	self should: [[MooseModel new delete] valueSupplyingAnswer: true ] raise: Error.
	
	model := MooseModel new.
	self deny: (MooseModel root includes: model).
	MooseModel root add: model.
	self assert: (MooseModel root includes: model).

	[model delete] valueSupplyingAnswer: {'Are you sure to want to delete ', model mooseName printString, '?' . true}.
	self deny: (MooseModel root includes: model).
