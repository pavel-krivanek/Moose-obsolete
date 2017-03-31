building
setLevels
	"Goes through all nodes in the graph and sets their levels relative to the root (level 0)"
	self rootNodes do: [ :rootNode |
		rootNode level: 0.
		rootNode setLevels. "Sets levels on all his children"
	].