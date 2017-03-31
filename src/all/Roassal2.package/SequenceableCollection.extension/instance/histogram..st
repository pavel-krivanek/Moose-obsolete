*roassal2-core
histogram: aBlockOrSymbol
	"Plot the histrogram (distribution) of the numerical values given the metric block or symbol on my elements.
	#('yes' 'no' 'no' 'yes' 'yes' 'maybe' 'maybe' 'yes') histogram
	#(5 6 5 6 4 2 10 10 10 10 12 12 14 8 5 6 4 2 3 4 5 6) histogram
	(RTShape withAllSubclasses) histogram: #numberOfMethods
	"
	| b ds |
	b := RTGrapher new.
	
	ds := RTHistogramSet new.
	ds points: self.
	ds barShape width: 20.
	ds x: aBlockOrSymbol.
	
	ds barChartWithBarTitle: [:ar | 
		ar second isEmpty 
			ifTrue: ['[:]']
			ifFalse: ['[', (ar second first isNumber ifTrue: [ar second first floor] ifFalse: [ar second first]) asString,':', (ar second last isNumber ifTrue: [ar second last ceiling] ifFalse: [ar second last]) asString,']']
			].
			
	b add: ds. 
	b axisX title: 'Values'.
	b axisY title: 'Frequency'.
	
	^ b.