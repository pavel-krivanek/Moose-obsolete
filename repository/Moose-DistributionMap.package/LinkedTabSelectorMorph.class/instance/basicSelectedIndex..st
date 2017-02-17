accessing
basicSelectedIndex: index

	"Set the value of selectedIndex"
	selectedIndex == index ifTrue: [^self].
	selectedIndex := index.
	self adoptPaneColor: self paneColor.
	self changed: #selectedIndex