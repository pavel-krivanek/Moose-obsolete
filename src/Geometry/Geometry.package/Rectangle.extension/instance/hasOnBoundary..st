*Geometry
hasOnBoundary: point
| a |
	a := self edges select: [:edge | a := edge hasPoint: point].
	^a isNotEmpty