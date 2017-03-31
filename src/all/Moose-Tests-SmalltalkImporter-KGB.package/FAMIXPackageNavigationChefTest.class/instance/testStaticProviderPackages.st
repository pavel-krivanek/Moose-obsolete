staticDependencies
testStaticProviderPackages 
	 
	| p7 p8 p10 p11 | 
	p7 := self packageP7ReferencerReferee. 
	p8 := self packageP8FullReferencer. 
	p10 := self packageP10InteractedReferee. 
	p11 := self packageP11FullReferee. 
	self 
		assert: 
			(p8 queryStaticOutgoingAssociations atPackageScope equalsTo: (Set with: p10 with: p11 with: p7))