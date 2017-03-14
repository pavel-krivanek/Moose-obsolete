*petitislands
isIslandBorderOpenSet: set
	set add: self.
	^ self children anySatisfy: [:e | e isIslandBorderOpenSet: set ]