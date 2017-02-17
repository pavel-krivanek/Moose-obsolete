accessing
parentSelectors
	^ parentSelectors ifNil: [ parentSelectors := self privateParentSelectors ] 