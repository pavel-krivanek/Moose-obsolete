tests
testAllPropertySelectors
	| model class |
	model := MooseModel new.
	self assert: (MooseEntity allPropertySelectorsComputableIn: model) equals: IdentityDictionary new.
	model := FAMIXTypeGroup new.
	class := FAMIXClass new name: 'AClass'.
	model add: class.
	self assert: (MooseEntity allPropertySelectorsComputableIn: model) equals: IdentityDictionary new.
	model := MooseAbstractGroup new.
	class := FAMIXClass new name: 'AClass'.
	model add: class.
	self assert: (MooseEntity allPropertySelectorsComputableIn: model) equals: IdentityDictionary new