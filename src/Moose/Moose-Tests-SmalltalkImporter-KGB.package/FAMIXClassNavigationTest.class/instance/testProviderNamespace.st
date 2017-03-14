MooseKGB-TestFamix3-allDependencies
testProviderNamespace
	self assert: self c15FullReferencerOutSide providerNamespaces size equals: 3.
	self
		assert:
			(self c15FullReferencerOutSide providerNamespaces
				equalsTo:
					(Set new
						add: self namespace3ReferencerReferee;
						add: self namespace5InteractedReferencer;
						add: self namespace6InteractedReferee;
						yourself))