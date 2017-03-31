world menu
allPluginClasses
	"Return the list of plugin"
	^ self allSubclasses select: [ :c | c new isEnabled ]