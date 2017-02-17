class initialization
initialize
	"self initialize"
	self initializeJavaTreesholds.
	self initializeCPPTreesholds.  
	self initializeSmalltalkTreesholds .
		
	MoosePyramidResults := Dictionary new
		at: #CycloLoc put: 0.23;
		at: #LocNom put: 6.69;
		at: #NomNoc put: 5.83;
		at: #NocNop put: 6.09;
		at: #CallsNom put: 4.18;
		at: #FanoutCalls put: 0.72;
		at: #ANDC put: 0.99;
		at: #AHH put: nil;
		yourself.