allDependencies
testClientClassesInto
	| p1 p5 |
	p1 := self packageP1FullReferencer.
	p5 := self packageP5FullReferee.
	self assert: (((p5 queryAllIncoming atScope: FAMIXType) withinPackage: p1) equalsTo: (Set with: self c1FullReferencerOutSide))