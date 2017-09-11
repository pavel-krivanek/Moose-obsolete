accessing
shouldUseNiceLabels: aBoolean
	"
	Use an algorithm to determine the best values for the ticks. 
	

-=-=-=-=-=-=-=-=-=-=-=-=
g := RTGrapher new.
g shouldUseNiceLabels: true.

ds := RTData new.
ds barShape.
ds points: #(1.2 2.1 3.9).
g add: ds.

g
-=-=-=-=-=-=-=-=-=-=-=-=
	"
	self shouldUseNiceLabelsForX: aBoolean.
	self shouldUseNiceLabelsForY: aBoolean.