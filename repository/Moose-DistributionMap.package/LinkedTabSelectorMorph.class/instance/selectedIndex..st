accessing
selectedIndex: index

	"Set the value of selectedIndex"
	firstSideLink ifNotNil: [firstSideLink  basicSelectedPageIndex: index].
	secondSideLink ifNotNil: [secondSideLink basicSelectedPageIndex: index] .
	selectedIndex == index ifTrue: [^self].
	selectedIndex := index.
	self adoptPaneColor: self paneColor.
	self changed: #selectedIndex