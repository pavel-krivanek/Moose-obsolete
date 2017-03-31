adding
addPath: stream
	| aAngle bAngle xAngle i e xcos xsin acos asin bcos bsin c b|
	aAngle := self alphaAngle degreesToRadians.
	bAngle := self betaAngle degreesToRadians.
	i := self innerRadius.
	e := self outterRadius.
	xAngle := (aAngle + bAngle) /2.
	xcos := xAngle cos.
	xsin := xAngle sin negated.
	acos := aAngle cos.
	asin := aAngle sin negated.
	bcos := bAngle cos.
	bsin := bAngle sin negated.
	
	c := self center.
	b := [ :a | a asFloat asString ].
	stream
		nextPutAll: 'd="M ',(b value: i*acos+c x),' ',(b value: i*asin + c y);
		nextPutAll: ' L ',(b value: e*acos+c x),' ',(b value: e*asin+c y);
		nextPutAll: ' A ',(b value: e),' ',(b value: e), ' 0 0 0 ', (b value: e*xcos+c x),' ',(b value: e*xsin+c y);
		nextPutAll: ' A ',(b value: e),' ',(b value: e), ' 0 0 0 ', (b value: e*bcos+c x),' ',(b value: e*bsin+c y);
		nextPutAll: ' L ',(b value: i * bcos+c x),' ',(b value: i*bsin + c y);
		nextPutAll: ' A ',(b value: i),' ',(b value: i), ' 0 0 1 ', (b value: i*xcos+c x),' ',(b value: i*xsin+c y);
		nextPutAll: ' A ',(b value: i+c x),' ',(b value: i+c y), ' 0 0 1 ', (b value: i*acos+c x),' ',(b value: i*asin+c y);
		nextPutAll: ' Z" '.
		