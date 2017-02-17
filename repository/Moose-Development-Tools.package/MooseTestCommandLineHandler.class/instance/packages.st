private
packages
	| packages |
	packages := Set new.
	self addTestPackagesFrom: self mooseDevelopmentVersion to: packages.
	(self mooseDevelopmentVersion projects reject: [:each | each name = 'OSProcess']) 
		do: [ :each | 
			self addTestPackagesFrom: each version to: packages ].
	^ packages