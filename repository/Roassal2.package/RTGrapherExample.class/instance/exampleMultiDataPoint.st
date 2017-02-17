sources
exampleMultiDataPoint

| b d |
b := RTGrapher new.

d := RTMultipleData new.
d barShape color: Color blue.
d points: #( #('hello' 1 2 1) #('world' 2 4 2) #('bonjour' 3 5 4) #('Gutten Morgen' -1 4 -5)).
d addMetric: #second.
d addMetric: #third.
d addMetric: #fourth.

"d barChartWithBarCenteredTitle: #first."
d barChartWithBarTitle: #first rotation: -30.

b add: d.
^ b 