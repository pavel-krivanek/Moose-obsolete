allDependencies
testProviderNamespace
	self assert: (self c15FullReferencerOutSide queryAllOutgoing atScope: FAMIXNamespace) size equals: 3.
	self
		assert:
			((self c15FullReferencerOutSide queryAllOutgoing atScope: FAMIXNamespace)
				equalsTo:
					(Set new
						add: self namespace3ReferencerReferee;
						add: self namespace5InteractedReferencer;
						add: self namespace6InteractedReferee;
						yourself))