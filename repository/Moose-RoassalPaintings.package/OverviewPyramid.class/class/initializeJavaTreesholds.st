class initialization
initializeJavaTreesholds

	JavaTreesholds := Dictionary new
		at: #CycloLoc put: (OrderedCollection withAll: #(0.16 0.20 0.24));
		at: #LocNom put: (OrderedCollection withAll: #(7 10 13));
		at: #NomNoc put: (OrderedCollection withAll: #(4 7 10));
		at: #NocNop put: (OrderedCollection withAll: #(6 17 26));
		at: #CallsNom put: (OrderedCollection withAll: #(2.01 2.62 3.2));
		at: #FanoutCalls put: (OrderedCollection withAll: #(0.56 0.62 0.68));
		at: #ANDC put: (OrderedCollection withAll: #(0.25 0.41 0.57));
		at: #AHH put: (OrderedCollection withAll: #(0.09 0.21 0.32));
		yourself.
