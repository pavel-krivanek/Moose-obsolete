view
viewEvolutionOn: mondrian
	mondrian shape rectangle 
		width: #numberOfAttributes; 
		height: #numberOfMethods;
		linearFillColor: #numberOfLinesOfCode within: (self versions collect: #versionEntity).
	mondrian nodes: (self versions collect: #versionEntity).