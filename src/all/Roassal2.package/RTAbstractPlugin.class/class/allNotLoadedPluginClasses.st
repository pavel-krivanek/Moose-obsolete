world menu
allNotLoadedPluginClasses
	^ (self allEnabledAndNotLoadedPlugins sortedAs: #pluginName) collect: #class