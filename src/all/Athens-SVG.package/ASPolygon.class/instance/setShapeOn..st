as yet unclassified
setShapeOn: aCanvas
	| path |

	path := aCanvas createPath: [:builder |
		builder 
			absolute;
			moveTo: points first.		

		points allButFirstDo: [:pt | builder lineTo: pt ].
		
		builder close
	].
	
	aCanvas setShape: path.
