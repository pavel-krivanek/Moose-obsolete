tests
testCopyReplaceAllWith
	| list |

	list := self listClass newFrom: self listItems, self listItems.
	1 to: self listItems size do: [:i | | replacedElements |
		replacedElements := self listItemsLast: i.
		self
			assertList:
				(list
					copyReplaceAll: replacedElements
					with: (replacedElements collect: [:each | self changedListItem: each]))
			copiedFrom: list
			equals: 
				(self listClass newFrom:
					((self listItems, self listItems) 
						copyReplaceAll: replacedElements
						with: (replacedElements collect: [:each | self changedListItem: each]))).
		self
			assertList:
				(list
					copyReplaceAll: (Array with: self absentListItem)
					with: (Array with: self newListItem))
			copiedFrom: list
			equals: list.	
		self
			assertList: (list copyReplaceAll: #() with: (Array with: self newListItem))
			copiedFrom: list
			equals: list.
		self
			assertList: (list copyReplaceAll: (self listItems copyWith: self absentListItem) with: #())
			copiedFrom: list
			equals: list].