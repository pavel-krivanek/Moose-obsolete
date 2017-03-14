grammar
printStmt
"	^ 'print' asParser, (identifier / number) trimBlanks ==> [ :tokens | #print ]"
	^ 'print' asParser, "(newline / semicolon) negate star" unknownStmt trimBlanks
	
	map: [ :print :rest |
 		#'print'	
	]