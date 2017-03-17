RTVerticalMultipleData represents a group of data points that are vertically located. Each group has the same X value.

Negative data are not allowed.

Here is an example:
[[[
| b d |			
b := RTGrapher new.

d := RTVerticalMultipleData new.
d points: #( #('hello' 1 2 1) #('world' 2 4 2 ) #('bonjour' 3 5 4) #('bonjour' 3 5 4 ) #('bonjour' 3 5 4)).
d addMetric: #second.
d addMetric: #third.
d addMetric: #fourth.

d barChartWithBarTitle: #first rotation: -30.
b add: d.

b			
]]] 

Here another example:
[[[
| b d classes |
classes := (Collection withAllSubclasses reverseSortedAs: #numberOfMethods) first:	10.
			
b := RTGrapher new.

d := RTVerticalMultipleData new.
d points: classes.
d addMetric: #numberOfLinesOfCode.
d addMetric: #numberOfMethods.

d barChartWithBarTitle: #name rotation: -30.
b add: d.

b
]]]			