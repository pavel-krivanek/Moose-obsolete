as yet unclassified
testConditionCtxAccess
	| parser |

	parser := ('a' asParser if: [ :ctx | (ctx propertyAt: #foo) = #bar ]).
	
	context propertyAt: #foo put: #bar.
	self assert: parser parse: 'a' .


	context propertyAt: #foo put: #zorg.
	self assert: parser fail: 'a' .
