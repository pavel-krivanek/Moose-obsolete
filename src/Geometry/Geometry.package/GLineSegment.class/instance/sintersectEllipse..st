as yet unclassified
sintersectEllipse: anEllipse
	"collection of points of intersection with a GEllipse.
	Assume centered ellipse so move myself a bit
	
	\frac{x^2}{a^2} + \frac{y^2}{b^2} = 1
	
	z = a^2k^2 + b^2
	D = z - q^2
	x12 = \frac{a^2kq}{z} \pm \frac{ab}{z}\sqrt{D}
	y12 = \frac{b^2q}{z} \pm \frac{abk}{z}\sqrt{D}
	"

	| me z D k q a b |
	"	me := self class from: self from - anEllipse center to: self to - anEllipse center."
	me := self.
	a := anEllipse a.
	b := anEllipse b.
	k := me parameters first.
	q := me parameters second.
	z := a squared * k squared + b squared.
	D := z - q squared.
	"No solutions"
	D < 0
		ifTrue: [ ^ #() ].
	"One solution"
	D = 0
		ifTrue: [ ^ {((a squared * k * q / z) @ (b squared * q / z) + anEllipse center)} ].
	"Two solutions"
	^ Array
		with:
			anEllipse center
				+
					((a squared * k * q / z + (a * b * D sqrt / z))
						@ (b squared * q / z + (a * b * k * D sqrt / z)))
		with:
			anEllipse center
				+
					((a squared * k * q / z - (a * b * D sqrt / z))
						@ (b squared * q / z - (a * b * k * D sqrt / z)))