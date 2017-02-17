private
textLinesFor: anEntity 
	 
	^(self codeBase at: anEntity) collect: [:sourceLine | sourceLine text]