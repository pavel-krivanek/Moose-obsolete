tests
testMetaSide

	| anEnvironemnt aMethod |
	
	anEnvironemnt := RGEnvironment new.
	aMethod := (anEnvironemnt ensureClassNamed: 'SomeClass class') ensureLocalMethodNamed: #someMethod.
	self assert: aMethod isMetaSide.
	self deny: aMethod isFromTrait.
	aMethod := (anEnvironemnt ensureClassNamed: 'SomeClass') ensureLocalMethodNamed: #someMethod.
	self deny: aMethod isMetaSide.
	self deny: aMethod isFromTrait.
	aMethod := (anEnvironemnt ensureTraitNamed: 'SomeTrait classTrait') ensureLocalMethodNamed: #someMethod.
	self assert: aMethod isMetaSide.
	self assert: aMethod isFromTrait.
	aMethod := (anEnvironemnt ensureTraitNamed: 'SomeTrait') ensureLocalMethodNamed: #someMethod.
	self deny: aMethod isMetaSide.
	self assert: aMethod isFromTrait.

	