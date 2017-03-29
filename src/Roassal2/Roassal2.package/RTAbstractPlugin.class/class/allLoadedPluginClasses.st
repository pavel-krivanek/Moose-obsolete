world menu
allLoadedPluginClasses
	^ (self allEnabledAndLoadedPlugins sortedAs: #pluginName) collect: #class