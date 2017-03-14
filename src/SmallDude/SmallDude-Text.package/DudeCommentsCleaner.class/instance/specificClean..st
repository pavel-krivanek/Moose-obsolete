actions
specificClean: text 
	 
	| openComment iEndComment iStartComment iLineComment | 
	openComment := False. 
	1 
		to: text size 
		do: 
			[:i |  
			"check if I have openBraces form previous lines" 
			openComment = True 
				ifTrue: 
					[iEndComment := self 
						getIndexOf: sEndComment 
						in: (text at: i) 
						startingAt: 1. 
					iEndComment > 0 
						ifTrue: 
							[text 
								at: i 
								put: ((text at: i) sliceFrom: iEndComment + sEndComment size). 
							openComment := False] 
						ifFalse: [text at: i put: '']]. 
			[(self 
				containsComments: (text at: i) 
				wasOpenComment: openComment) = True] 
				whileTrue: 
					[iStartComment := self 
						getIndexOf: sStartComment 
						in: (text at: i) 
						startingAt: 1. 
					iLineComment := self 
						getIndexOf: sLineComments 
						in: (text at: i) 
						startingAt: 1. 
					iStartComment > 0 
						ifTrue: 
							[(iLineComment > 0 and: [iLineComment < iStartComment]) 
								ifTrue: 
									["situation:  ...//.../*" 
									text 
										at: i 
										put: 
											((text at: i) 
												sliceFrom: 1 
												to: iLineComment - 1)] 
								ifFalse: 
									["either I have no //, or it is after /*" 
									iEndComment := self 
										getIndexOf: sEndComment 
										in: (text at: i) 
										startingAt: iStartComment. 
									iEndComment > 0 
										ifTrue: 
											[text 
												at: i 
												put: 
													((text at: i) 
														sliceFrom: 1 
														to: iStartComment - 1) 
														, ((text at: i) sliceFrom: iEndComment + sEndComment size)] 
										ifFalse: 
											[openComment := True. 
											text 
												at: i 
												put: 
													((text at: i) 
														sliceFrom: 1 
														to: iStartComment - 1)]]] 
						ifFalse: 
							[text 
								at: i 
								put: 
									((text at: i) 
										sliceFrom: 1 
										to: iLineComment - 1)]]]. 
	^text