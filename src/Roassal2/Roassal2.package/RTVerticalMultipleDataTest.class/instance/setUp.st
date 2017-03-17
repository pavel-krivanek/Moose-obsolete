initialization
setUp
	super setUp.			
	b := RTGrapher new.

	d := RTVerticalMultipleData new.
	d points: #( #('hello' 1 2 1) #('world' 2 4 2) #('bonjour' 3 5 4) #('bonjour' 3 5 4) #('bonjour' 3 5 4)).
	d addMetric: #second.
	d addMetric: #third.
	d addMetric: #fourth.

	b add: d.
	
	"d barChartWithBarTitle: #first rotation: -30.
	"
	b axisX noTick; noLabel.
	b axisY noTick; noLabel.

	b build