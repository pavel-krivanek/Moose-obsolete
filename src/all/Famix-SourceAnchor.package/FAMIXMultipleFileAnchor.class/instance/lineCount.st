accessing
lineCount
	^ self allFiles inject: 0 into: [ :sum :each | sum + each lineCount  ]