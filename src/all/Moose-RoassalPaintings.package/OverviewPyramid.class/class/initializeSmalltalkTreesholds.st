class initialization
initializeSmalltalkTreesholds

	SmalltalkTreesholds := Dictionary new
		at: #CycloLoc put: (OrderedCollection withAll: #(0.16 0.22 0.27));
		at: #LocNom put: (OrderedCollection withAll: #(4.92 6.91 8.90));
		at: #NomNoc put: (OrderedCollection withAll: #(8.18 11.24 14.30));
		at: #NocNop put: (OrderedCollection withAll: #(4.63 8.57 12.50));
		at: #CallsNom put: (OrderedCollection withAll: #(3.13 5.46 7.79));
		at: #FanoutCalls put: (OrderedCollection withAll: #(0.15 0.23 0.31));
		at: #ANDC put: (OrderedCollection withAll: #(0.37 0.60 0.83));
		at: #AHH put: (OrderedCollection withAll: #(1.42 2.22 3.03));
		yourself.
