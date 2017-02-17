benchs
bench 
"
	MessageTally spyOn:
	MessageTally spyOn: [1000 timesRepeat: [ (Kontract new: 3 ) removeOne: 'hllo']]
	
"	
	Time millisecondsToRun: [10000 timesRepeat: [ (self new: 3 ) removeOne: 'hllo']]