yesterday weather
ywForYesterday: yesterdayExpression forTomorrow: tomorrowExpression
	
	| hitsCount |
	self versions isEmpty ifTrue: [^0].
	hitsCount := (self detailedYWForYesterday: yesterdayExpression forTomorrow: tomorrowExpression)
		inject: 0
		into:
			[:sum :each | 
			each notEmpty
				ifTrue: [sum + 1]
				ifFalse: [sum]].
	^hitsCount / (self versions size - 2)