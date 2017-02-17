public - accessing
minY: aNumber
	"
	Set the minimym value for the Y-axis.
	Here is an example:
	| b ds |
	b := RTGrapher new.
	ds := RTData new.
	ds points: #(2 3 4).
	b add: ds.
	b minY: -10.
	b
	
	Note that the provided argument should be lesser than 0. This is because the 0 @ 0 point is always in the graph. 

	If you want to excluse the 0 @ 0 from the produced graph, we suggest you to read Section 6 (Translating the Y axis), in 
	https://dl.dropboxusercontent.com/u/31543901/AgileVisualization/Grapher/0203-Grapher.html
	"
	minY := aNumber