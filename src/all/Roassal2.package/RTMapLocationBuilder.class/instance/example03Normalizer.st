examples
example03Normalizer

	"
	self new example03Normalizer
	"
	| paris london santiago b newYork |
	paris := 48.8567 @ 2.3508.
	london := 51.507222 @ -0.1275.
	santiago := -33.45 @ -70.666667.
	newYork := 40.7127 @ -74.0059.

	b := RTMapLocationBuilder new.
	b shape circle.
	b addPoint: paris value: 10. 
	b addPoint: london value: 15.
	b addPoint: santiago value: 20.
	b addPoint: newYork value: 30.
	b normalizer normalizeSize: #yourself max: 50; normalizeColor: #yourself; alphaColor: 0.3.
	^ b