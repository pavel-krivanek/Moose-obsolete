accessing
valueRetrieverOn: aValueOrAOneArgBlock
	^ [ :anElement | aValueOrAOneArgBlock rtValue: anElement model ]