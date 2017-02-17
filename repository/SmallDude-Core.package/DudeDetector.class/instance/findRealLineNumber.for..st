private
findRealLineNumber: aPositionInMatrix for: anEntity
	^ ((self codeBase at: anEntity) at: aPositionInMatrix) lineno