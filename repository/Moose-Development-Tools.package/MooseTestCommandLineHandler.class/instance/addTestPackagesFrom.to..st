private
addTestPackagesFrom: configVersion to: packages
	(configVersion packagesForSpecNamed: 'Tests') do: [ :spec | 
		self addPackagesMatching: (spec name, '.*') to: packages ]