ui
browseDuplicationText
	<menuItem: 'Duplication text' category: 'Browse'> 
	| browser | 
	browser := GLMTabulator new.
	browser column: #diff.
	browser title: 'Duplication'.
	browser transmit to: #diff; andShow: [:a | 
		a diff display: [:dup | Array with: dup referenceText with: dup duplicateText ]].
	^ browser openOn: self