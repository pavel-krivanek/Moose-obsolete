Extension { #name : #Announcement }

{ #category : #'*Beacon-Core-Core' }
Announcement >> emit [
	Beacon announce: self asBeaconSignal
]
