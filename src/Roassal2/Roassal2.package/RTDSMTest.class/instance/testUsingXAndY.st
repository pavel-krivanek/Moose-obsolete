tests
testUsingXAndY
	| b |

	b := RTDSM new.
	b objectsX: #(1 2 3 4).
	b objectsY: #( 'A' 'B' 'C' ).
	b build.
	
	self assert: b objectsX size equals: 4.
	self assert: b objectsY size equals: 3.