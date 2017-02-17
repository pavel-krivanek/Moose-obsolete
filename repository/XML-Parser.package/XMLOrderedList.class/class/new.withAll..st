instance creation
new: aSize withAll: anObject
	| newList |

	"reimplement for portability"
	newList := self new: aSize.
	1 to: aSize do: [:i | newList addLast: anObject].
	^ newList.