*Moose-Finder
mooseDescriptionsOfNumberProperties
	^ self mooseDescription allAttributes select: [:each | each type = FM3 number ]