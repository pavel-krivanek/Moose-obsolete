staticDependencies
testStaticClientClassesInto 
	 
	| p3 | 
	p3 := self packageP3InteractedReferencer. 
	self 
		assert: 
			((self c11FullRefereeOutSide 
				queryStaticIncomingAssociations atTypeScope withinNamespace: self namespace1InteractedReferencerReferee) 
				equalsTo: 
					((Set new) 
						add: self c3ReferencerInSideRefereeOutSide; 
						add: self c6FullReferencerInSideOutSide; 
						add: self c1FullReferencerOutSide; 
						yourself)). 
	self 
		assert: 
			((self c11FullRefereeOutSide queryStaticIncomingAssociations atTypeScope withinPackage: p3) 
				equalsTo: 
					((Set new) 
						add: self c6FullReferencerInSideOutSide; 
						yourself))