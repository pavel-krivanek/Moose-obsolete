actions
specificClean: text 
	 
	| crtLine | 
	1 
		to: text size 
		do: 
			[:lineNo |  
			crtLine := text at: lineNo. 
			(crtLine beginsWith: 'import ') ifTrue: [text at: lineNo put: '']]. 
	^text