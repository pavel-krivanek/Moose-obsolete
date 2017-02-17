*Famix-Extensions
numberOfPackages
	self mooseModel ifNil: [ ^ 0 ].
	^ self mooseModel isSmalltalk 
			ifTrue: [self privateState propertyAt: #numberOfPackages ifAbsentPut: [self allPackages size].]
			ifFalse: [self privateState propertyAt: #numberOfPackages ifAbsentPut: [self allNamespaces size].].