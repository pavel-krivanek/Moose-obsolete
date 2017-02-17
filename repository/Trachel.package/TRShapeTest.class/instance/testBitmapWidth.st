bitmap
testBitmapWidth

	self assert: (TRBitmapShape new form: (TRPlatform current newColorFormWithExtent: 20 @ 20 depth: 32)) width equals: 20