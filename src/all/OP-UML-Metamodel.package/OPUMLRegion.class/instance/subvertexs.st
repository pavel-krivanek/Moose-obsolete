accessing
subvertexs
	"The set of Vertices that are owned by this Region."
	^ subvertexs ifNil: [ subvertexs := OPUMLToManyLinks on: self identity opposite: #container: ]