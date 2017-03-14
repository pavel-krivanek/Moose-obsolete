accessing
listWithSingleItem
	| list |

	list := super listWithSingleItem.
	self observerOnList: list.
	^ list.