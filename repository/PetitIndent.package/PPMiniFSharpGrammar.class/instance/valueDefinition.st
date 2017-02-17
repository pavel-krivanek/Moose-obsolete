let
valueDefinition
	^ pat, spaces, '=' asParser, seqBlock
		 
	map: [ :__pat :__space :__eq :__seqBlock |
 		{ __pat . __seqBlock }	
	]	