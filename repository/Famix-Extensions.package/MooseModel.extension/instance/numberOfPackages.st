*Famix-Extensions
numberOfPackages
	<MSEProperty: #numberOfPackages type: #Number>
	<MSEComment: 'Total number of packages'>

	^ self  isSmalltalk 
			ifTrue: [self privateState propertyAt: #numberOfPackages ifAbsentPut: [self allPackages size].]
			ifFalse: [self privateState propertyAt: #numberOfPackages ifAbsentPut: [self allNamespaces size].].