actions
specificClean: text 
	 
	| whiteSpaces crtLine crtSpace | 
	whiteSpaces := DudeWhiteSpaceCleaner standardSpace. 
	1 
		to: text size 
		do: 
			[:lineNo |  
			crtLine := text at: lineNo. 
			1 
				to: whiteSpaces size 
				do: 
					[:spaceNo |  
					crtSpace := (whiteSpaces at: spaceNo) asSymbol asString. 
					crtLine := crtLine copyReplaceAll: crtSpace with: ''. 
					text at: lineNo put: crtLine]]. 
	^text