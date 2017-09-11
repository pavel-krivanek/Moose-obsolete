public - bar chart
configureForBarCharts
	"Public method
	
	Configure the grapher to have bar within the X-axis limits
	Here is an example:
-=-=-=-=-=-=-=-=
g := RTGrapher new.

ds := RTData new.
ds barShape.
ds points: #(1 2 3 -2).
ds maxX: 10.
g add: ds.

g configureForBarCharts.

g
-=-=-=-=-=-=-=-=
	"
	self datasets do: #offsetForBarCharts.
	self minX: 0.5.
	self maxX: self getMaxNumberOfPoints.
	self axisX noTick.