tests - new
testPrinting
	| newPackage |
	
	newPackage := RGPackageDefinition named: 'Collections-Sequenceable'.
	
	self assert: newPackage printString equals: ('RGPackageDefinition(Collections-Sequenceable)').
	