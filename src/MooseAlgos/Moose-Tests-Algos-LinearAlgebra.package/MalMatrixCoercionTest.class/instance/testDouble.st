test
testDouble
	"no longer Double in Pharo"
	"| m n |
	m := MAColumnMatrix
		new: 4 @ 3
		withAll: 2.
	n := 2.0d.
	m + n.
	n + m.
	m - n.
	n - m.
	m * n.
	n * m.
	m / n.
	n / m"