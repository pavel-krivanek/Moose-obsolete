staticDependencies
testStaticClientNamespaces
	self
		assert:
			((self c11FullRefereeOutSide queryStaticIncomingAssociations
				atScope: FAMIXNamespace)
				equalsTo:
					(Set new
						add: self namespace1InteractedReferencerReferee;
						add: self namespace3ReferencerReferee;
						add: self namespace2FullReferee;
						yourself))