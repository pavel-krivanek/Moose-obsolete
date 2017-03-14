others
multilineComment
	| doubleQuot singleQuot |
	doubleQuot := 	'"""' asParser.
	singleQuot := 	'''''''' asParser.
		
		
 	^ (
		(doubleQuot, doubleQuot negate star, doubleQuot) /
		(singleQuot, singleQuot negate star, singleQuot)
	) ==> [ :e | #() ]