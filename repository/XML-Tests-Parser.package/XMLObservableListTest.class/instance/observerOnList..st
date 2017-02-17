accessing
observerOnList: aList
	| observer |

	observer := self observerClass new.
	aList observer: observer.
	^ observer.