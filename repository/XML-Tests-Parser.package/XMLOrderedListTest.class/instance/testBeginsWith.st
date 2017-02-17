tests
testBeginsWith
	| list |

	self deny: (self emptyList beginsWith: self listItems).
	list := self listWithItems.
	1 to: list size do: [:i |
		self
			assert: (list beginsWith: (self listItems copyFrom: 1 to: i));
			deny: (list beginsWith: ((self listItems copyFrom: 1 to: i) copyWith: self absentListItem));
			deny: (list beginsWith: ((self listItems copyFrom: 1 to: i) copyWithFirst: self absentListItem))].