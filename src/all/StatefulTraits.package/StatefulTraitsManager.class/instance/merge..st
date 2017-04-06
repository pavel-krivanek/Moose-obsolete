accessing
merge: aClass

	| info |
	
	info := self manage: aClass.
	info clean.
	info merge.