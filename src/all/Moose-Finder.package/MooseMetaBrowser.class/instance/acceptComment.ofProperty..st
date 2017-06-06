private
acceptComment: aString ofProperty: anFm3Property	
	| ast pragmas |
	ast := anFm3Property compiledMethod parseTree. 
	pragmas := ast pragmas reject: [ :each | each selector = #MSEComment: ].
	pragmas 
		add: (RBPragmaNode 
			selector: #MSEComment: 
			arguments: { RBLiteralValueNode value: aString } ).
	ast pragmas: pragmas.
	anFm3Property compiledMethod methodClass 
		compile: ast reformatSource
		classified: anFm3Property compiledMethod category