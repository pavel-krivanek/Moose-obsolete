accessing
yOffset: numberOfPixels
	"Set an offset from the two axes. Here is an example:
-=-=-=-=-=-=-=-=-=
g := RTGrapher new.
g yOffset: 30.

ds := RTData new.
ds barShape.
ds points: #(4 5 6).
g add: ds.
g
-=-=-=-=-=-=-=-=-=
"
	yOffset := numberOfPixels