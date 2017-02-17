actions
specificClean: text 
	 
	| noises crtLine crtNoise | 
	noises := self getNoise. 
	1 
		to: text size 
		do: 
			[:lineNo |  
			crtLine := text at: lineNo. 
			1 
				to: noises size 
				do: 
					[:noiseNo |  
					crtNoise := noises at: noiseNo. 
					crtLine := crtLine copyReplaceAll: crtNoise with: ''. 
					text at: lineNo put: crtLine]]. 
	^text