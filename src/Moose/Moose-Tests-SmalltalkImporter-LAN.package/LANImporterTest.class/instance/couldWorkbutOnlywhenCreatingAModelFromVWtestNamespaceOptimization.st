tests
couldWorkbutOnlywhenCreatingAModelFromVWtestNamespaceOptimization
	| namespaces namespacesNames theLANNamespace classNamesFromLAN |
	namespaces := self model allNamespaces.
	namespacesNames := namespaces collect: [ :each | each name ].
	self assert: namespaces size equals: 5.
	self assert: (namespacesNames includes: #LAN).
	theLANNamespace := namespaces detect: [ :each | each name = #LAN ] ifNone: [ nil ].
	self deny: theLANNamespace isNil.
	classNamesFromLAN := theLANNamespace classes collect: [ :each | each name ].
	self assert: theLANNamespace numberOfClasses equals: 18.
	self assert: (classNamesFromLAN includes: #LANFileServer).
	self assert: theLANNamespace isStub not.
	theLANNamespace := namespaces detect: [ :each | each name = #Root ] ifNone: [ nil ].
	self assert: theLANNamespace isStub not