tests
testClasses
	"self debug: #testClasses"
	
	self deny: (self model entityStorage selectAllWithType: FAMIXClass) isEmpty