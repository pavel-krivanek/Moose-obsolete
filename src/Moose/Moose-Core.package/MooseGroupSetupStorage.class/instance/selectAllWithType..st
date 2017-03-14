enumerating
selectAllWithType: aSmalltalkClass 
	^ self select: 
		[ :each | 
		"-- select returns an ArrayList"
		each class = aSmalltalkClass ]