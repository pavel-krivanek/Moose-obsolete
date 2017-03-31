tests
testImportClassComments 
	"self debug: #testImportClassComments"
	
	self deny: (self model allComments select: [:each | each belongsTo isClass]) isEmpty. 
	self deny: (self model allClasses select: [:each | each comments isEmpty not]) isEmpty. 
	self deny: (self model entityNamed: #'Smalltalk::LANInterface') comments isEmpty.