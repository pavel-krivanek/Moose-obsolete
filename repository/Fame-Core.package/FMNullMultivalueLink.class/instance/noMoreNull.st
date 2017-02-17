accessing
noMoreNull
	^ self owner instVarNamed: self selector put: (FMMultivalueLink on: self owner opposite: self opposite)