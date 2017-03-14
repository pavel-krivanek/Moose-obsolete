element-titles
elementTitleBlock
	"by default the title is just the title"
	^ elementTitleBlock isNil 
		ifTrue:  [self defaultElementTitleFormattingBlock]
		ifFalse: [elementTitleBlock]