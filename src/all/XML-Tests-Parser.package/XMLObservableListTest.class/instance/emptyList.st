accessing
emptyList
	| list |

	list := super emptyList.
	self observerOnList: list.
	^ list.