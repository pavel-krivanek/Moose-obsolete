initialization
getRelevantElementsFor: string
	^ view elements select: [ :e | string match: e model printString ]