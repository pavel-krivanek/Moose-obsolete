reference model reification
testNameResolverNamespaceName
	"self debug: #testNameResolverNamespaceName"
	self assert: ((FAMIXNameResolver uniqueNameForNamespaceNamed: #ReferenceModel scope: #'SCG::Moose') == #'SCG::Moose::ReferenceModel').
	self assert: ((FAMIXNameResolver uniqueNameForNamespaceNamed: #Moose scope: #SCG) ==  #'SCG::Moose')