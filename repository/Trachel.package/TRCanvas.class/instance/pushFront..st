actions
pushFront: aShape
	| tColl |
	tColl := aShape isFixed 
				ifTrue:  
					[ fixedShapes ]	
				ifFalse: 
					[ shapes ].
				
	tColl remove: aShape.
	tColl addLast: aShape 