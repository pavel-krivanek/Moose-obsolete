yesterday weather
detailedYWForYesterday: yesterdayExpression forTomorrow: tomorrowExpression
	
	^ ( 3 to: self versions size ) collect: [:index | | yesterday tomorrow |
		yesterday := self
				selectByExpression: yesterdayExpression
				appliedFromVersionIndex: 1
				toVersionIndexAndPresentInIt: index - 1.
		tomorrow := self
				selectByExpression: tomorrowExpression
				appliedFromVersionIndexAndPresentInIt: index - 1
				toVersionIndex: self versions size.
		yesterday intersectWith: tomorrow]