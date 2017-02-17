grammar
expressionList          
	^  (expression trim , ( ',' asParser trim , expression trim ) star , (',' asParser trim optional)) ==> [ :tokens | #exprList ]