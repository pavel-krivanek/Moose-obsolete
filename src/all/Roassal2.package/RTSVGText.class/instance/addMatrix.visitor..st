adding
addMatrix: stream visitor: visitor
	"| m |
	m := element matrix.
	stream
		nextPutAll: 'matrix(';
		nextPutAll: (visitor number: m sx);
		nextPutAll: ',';
		nextPutAll: (visitor number: m shy);
		nextPutAll: ',';
		nextPutAll: (visitor number: m shx);
		nextPutAll: ',';
		nextPutAll: (visitor number: m sy);
		nextPutAll: ',';
		nextPutAll: (visitor number: m x);
		nextPutAll: ',';
		nextPutAll: (visitor number: m y negated);
		nextPutAll: ')'."
	| box |
	box := element encompassingRectangle.
	stream
		nextPutAll: 'rotate(';
		nextPutAll: (visitor number: self angle);
		nextPutAll: ', ';
		nextPutAll: (visitor number: self x);
		nextPutAll: ', ';
		nextPutAll: (visitor number: self y);
		nextPutAll: ') '.
		
	