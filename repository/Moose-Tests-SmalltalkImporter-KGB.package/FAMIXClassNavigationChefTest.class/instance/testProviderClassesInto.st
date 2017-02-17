allDependencies
testProviderClassesInto 
	 
	| p11 | 
	p11 := self packageP11FullReferee.
	self 
		assert: 
			((self c15FullReferencerOutSide  queryAllOutgoingAssociations atTypeScope withinPackage: p11) 
				equalsTo: 
					((Set new) 
						add: self c19FullRefereeOutSide; 
						yourself)). 
	self 
		assert: 
			((self c15FullReferencerOutSide 
				 queryAllOutgoingAssociations atTypeScope withinNamespace: self namespace6InteractedReferee) 
				equalsTo: 
					((Set new) 
						add: self c19FullRefereeOutSide; 
						yourself))