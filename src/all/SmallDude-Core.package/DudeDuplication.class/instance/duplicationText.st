ui
duplicationText 
	 
	| source xsig inserted deleted eol | 
	eol := '\'. 
	inserted := 0. 
	deleted := 0. 
	xsig := self expandedSignature. 
	source := 'Duplication (' , signature , ') between:' , eol , eol 
		, referenceCode entity mooseName , ':' , eol , 'from line: ' 
		, referenceCode beginLine printString , ' to line: ' 
		, referenceCode endLine printString , ' (empty lines not counted)' , eol 
		, 
			'-----------------------------------------------------------------------------------' 
		, eol 
		, 
			(String 
				textForLines: referenceCode textLines 
				withPrefix: 
					[:lineNo |  
					[(xsig at: lineNo + inserted) = $I] whileTrue: [inserted := inserted + 1]. 
					(String with: (xsig at: lineNo + inserted)) , '     ']) , eol , eol , 
			'and' , eol , eol , eol , duplicateCode entity mooseName , ':' , eol , 
			'from line: ' , duplicateCode beginLine printString , ' to line: ' 
		, duplicateCode endLine printString , ' (empty lines not counted)' , eol 
		, 
			'-----------------------------------------------------------------------------------' 
		, eol 
		, 
			(String 
				textForLines: duplicateCode textLines 
				withPrefix: 
					[:lineNo |  
					[(xsig at: lineNo + deleted) = $D] whileTrue: [deleted := deleted + 1]. 
					(String with: (xsig at: lineNo + deleted)) , '     ']) , eol. 
	^source withCRs