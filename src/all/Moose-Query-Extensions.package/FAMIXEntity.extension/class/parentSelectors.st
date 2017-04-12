*Moose-Query-Extensions
parentSelectors
	^ parentSelectors ifNil: [ parentSelectors := self privateParentSelectors ] 