visiting
visitLiteralArrayNode: aRBLiteralArrayNode 

	^ aRBLiteralArrayNode contents collect: [:each | self visitNode: each]