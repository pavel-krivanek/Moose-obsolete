as yet unclassified
testLetLightweight6
	self fail: 
'let a = 1 in
 let b = 2
  a + b' 
   rule: #seqBlock.
	