public
sourceText
	^ self allFiles inject:  '' into: [ :sum  :each| 
		sum, 
		'=======================', each fileName, '====================', String cr,
		each sourceText ]