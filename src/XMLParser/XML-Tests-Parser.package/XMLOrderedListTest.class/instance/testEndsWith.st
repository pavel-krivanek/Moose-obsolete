tests
testEndsWith
	| list |

	self deny: (self emptyList endsWith: self listItems).
	list := self listWithItems.
	1 to: list size do: [:i |
		self
			assert: (list endsWith: (self listItems copyFrom: i to: list size));
			deny: (list endsWith: ((self listItems copyFrom: i to: list size) copyWith: self absentListItem));
			deny: (list endsWith: ((self listItems copyFrom: i to: list size) copyWithFirst: self absentListItem))].