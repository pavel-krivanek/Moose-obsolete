inheritance
testInheritedByPackages 
	 
	| p5 p6 | 
	p5 := self packageP5FullReferee. 
	p6 := self packageP6InteractedReferee. 
	self assert: (p6 queryIncomingInheritances atPackageScope equalsTo: (Set with: p5))