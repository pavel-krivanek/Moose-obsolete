public
withoutOrigin
	"If you have points far away from 0@0 it may be better to let the axes meet at a more closer place than 0@0."
	
	"
	Here is an example:
g := RTGrapher new.
g minX: 2.
g withoutOrigin.
d := RTData new.
d points: #(3 4 5 6).
d x: #yourself.
d y: #yourself.
g add: d.

g

	"
	withOrigin := false