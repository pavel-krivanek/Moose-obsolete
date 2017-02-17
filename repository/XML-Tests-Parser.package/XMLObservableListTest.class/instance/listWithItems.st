accessing
listWithItems
	| list |

	list := super listWithItems.
	self observerOnList: list.
	^ list.