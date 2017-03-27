world menu
allLoadedPluginClasses
	^ self allPluginClasses select: [ :c | c new isLoaded ]