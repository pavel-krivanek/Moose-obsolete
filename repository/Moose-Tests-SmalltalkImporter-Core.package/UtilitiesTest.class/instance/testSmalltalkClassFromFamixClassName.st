tests
testSmalltalkClassFromFamixClassName
	"self debug: #testSmalltalkClassFromFamixClassName"

	self assert: (FAMIXNameResolver smalltalkClassFromFamixClassName: 'Smalltalk::Point') equals: Point.
	self assert: (FAMIXNameResolver smalltalkClassFromFamixClassName: 'Smalltalk::Point_class') equals: Point class.
	self assert: (FAMIXNameResolver smalltalkClassFromFamixClassName: Point mooseName) equals: Point.
	self assert: (FAMIXNameResolver smalltalkClassFromFamixClassName: Point class mooseName) equals: Point class