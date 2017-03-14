private
buildWidget
	self flag: 'Remove whenLastEventChangedDo:'.
	^ RTViewForSpec new
		whenLastEventChangedDo: self whenLastEventChangedBlock;
		yourself