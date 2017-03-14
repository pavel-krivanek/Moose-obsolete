as yet unclassified
testLetLightweight7b
	
	self parse: 
'
let foo = 4 in
  let a = 3  
  let b = 1 in
 a + b' 
   rule: #seqBlock.
	