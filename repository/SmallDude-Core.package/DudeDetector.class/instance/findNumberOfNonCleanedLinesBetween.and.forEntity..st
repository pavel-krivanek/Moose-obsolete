private
findNumberOfNonCleanedLinesBetween: startLine and: endLine forEntity: anEntity
	^ (self codeBase at: anEntity)
		count: [ :aDudeSourceCodeLine | aDudeSourceCodeLine lineno between: startLine and: endLine ]