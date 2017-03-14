class initialization
initializeCPPTreesholds

	CPPTreesholds := Dictionary new
		at: #CycloLoc put: (OrderedCollection withAll: #(0.20 0.25 0.30));
		at: #LocNom put: (OrderedCollection withAll: #(5 10 16));
		at: #NomNoc put: (OrderedCollection withAll: #(4 9 15));
		at: #NocNop put: (OrderedCollection withAll: #(3 19 35));
		at: #CallsNom put: (OrderedCollection withAll: #(1.17 1.58 2));
		at: #FanoutCalls put: (OrderedCollection withAll: #(0.20 0.34 0.48));
		at: #ANDC put: (OrderedCollection withAll: #(0.19 0.28 0.37));
		at: #AHH put: (OrderedCollection withAll: #(0.05 0.13 0.21));
		yourself.
		
