world menu
allNotLoadedPluginClasses
	^ self allPluginClasses select: [ :c | c new isLoaded not ]