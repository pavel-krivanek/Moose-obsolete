properties
through: aPoint1 and: aPoint2 hasPoint: aPoint

	^(GTriangle with: aPoint1 with: aPoint2 with: aPoint) isDegenerate . 