accessing
shouldUseNiceLabelsForX: aBoolean
	"
	Use an algorithm to adequately select the value of the ticks on the X-axis.

	Consider the following script. Try replacing false by true
-=-=-=
g := RTGrapher new.
g shouldUseNiceLabelsForY: false.
g shouldUseNiceLabelsForX: false.

ds := RTData new.
ds points: #(1.2 2.1 3.9).
ds x: #yourself.
ds y: #yourself.
g add: ds.

g
-=-=-=
	"

	shouldUseNiceLabelsForX := aBoolean