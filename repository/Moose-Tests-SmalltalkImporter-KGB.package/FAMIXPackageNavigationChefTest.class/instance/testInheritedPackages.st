inheritance
testInheritedPackages 
	 
	| p5 p6 | 
	p5 := self packageP5FullReferee. 
	p6 := self packageP6InteractedReferee. 
	self assert: (p5 queryOutgoingInheritances atPackageScope equalsTo: (Set with: p6))