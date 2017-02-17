*petitislands
isIslandBorderOpenSet: set
	set add: self.
	^ self children allSatisfy: [:e | e isIslandBorderOpenSet: set ].