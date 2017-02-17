testing
includesPoint: aPoint
	|apt invertedPoint |
	invertedPoint := matrix inverseTransform: aPoint.
	apt := TRPlatform current polygonTesterClass new.
	^ polygons anySatisfy: [ :eachPolygon | ((apt polygon: eachPolygon) includesPoint: invertedPoint) ]