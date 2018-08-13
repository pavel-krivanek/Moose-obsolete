tests
testPackages
	
	| method class |

	" implicit environment "
	method := RGMethod unnamed.

	self assert: (method parent package == method package).
	self assert: method environment ask packages size equals: 2.
	
	" adding to existing class definition "
	class := RGClass unnamed.
	method := RGMethod parent: class.
	class addLocalMethod: method.
	
	self assert: (method parent package == method package).
	self assert: method environment ask packages size equals: 2.

	" adding to existing class definition with package "
	class := RGClass unnamed.
	method := RGMethod parent: class.
	class addLocalMethod: method.
	method package: (RGPackageDefinition named: 'SomePackage' parent: method environment).
	
	self assert: (method parent package ~~ method package).
	self assert: method environment ask packages size equals: 3.

	