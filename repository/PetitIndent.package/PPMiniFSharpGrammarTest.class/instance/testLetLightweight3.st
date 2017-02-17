as yet unclassified
testLetLightweight3
	self parse: '
let a = 3  
let b = 1 in
 a + b' 
   rule: #seqBlock.
	