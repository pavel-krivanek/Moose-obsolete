public interface
at: aHistoryName ifAbsentPut: aBlock
	
	| wantedHistory matchingHistories |
	matchingHistories := self entities
		select: [:each | each mooseName = aHistoryName].
	matchingHistories isEmpty
		ifTrue:
			[wantedHistory := aBlock value.
			self add: wantedHistory.
			self resetVersions]
		ifFalse: [wantedHistory := matchingHistories first].
	^wantedHistory