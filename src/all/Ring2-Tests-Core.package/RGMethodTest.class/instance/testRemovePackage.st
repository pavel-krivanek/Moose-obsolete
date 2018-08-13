tests
testRemovePackage
	
	| method class |

	method := RGMethod unnamed.
	class := method parent.
	
	method package: (RGPackageDefinition named: 'SomePackage' parent: method environment).
	
	self assert: (method parent package ~~ method package).
	self assert: method environment ask packages size equals: 3.
	
	method package: method parent package. "return it"

	self assert: (method parent package == method package).
	self assert: method environment ask packages size equals: 3.
	
	method environment removeUnusedPackages.
	self assert: method environment ask packages size equals: 2.
	
	