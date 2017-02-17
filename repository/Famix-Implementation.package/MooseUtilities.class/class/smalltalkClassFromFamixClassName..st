naming conventions
smalltalkClassFromFamixClassName: aFAMIXName
	^ self smalltalkClassFromFamixClassName: aFAMIXName ifAbsent: [
		self error: 'No Smalltalk class corresponds to the, ', aFAMIXName, ' FAMIX name']