initialize-release
orderColorMap

	| propertiesAndNumberOfOccurrences result |
	propertiesAndNumberOfOccurrences := OrderedCollection new.
	result := Dictionary new.
	"We first compute the number of occurrences for each property value"
	elementsAndPropertyValue values do: [ :aPropertyValue |
		|propAndNbOfOcc|
		propAndNbOfOcc := propertiesAndNumberOfOccurrences detect: [:assoc | assoc key = aPropertyValue] ifNone: [propertiesAndNumberOfOccurrences add: (aPropertyValue -> 0)].
		propAndNbOfOcc value: (propAndNbOfOcc value + 1).
		].
	"Once the number of occurences computed for each property value, we sort them in a decroissant order, and we  keep as many property values as their is available colors"
	propertiesAndNumberOfOccurrences  := (propertiesAndNumberOfOccurrences asArray sort: [:a :b | a value > b value]). 
	propertiesAndNumberOfOccurrences size > self colors size ifTrue: [propertiesAndNumberOfOccurrences := propertiesAndNumberOfOccurrences copyFrom: 1 to:self colors size].
	properties := propertiesAndNumberOfOccurrences collect: [:anAssoc | anAssoc key].
	
	"Then we follow the colors order, and set a color to each property value"
	(1 to: propertiesAndNumberOfOccurrences size) do: [:index |
		result at: (propertiesAndNumberOfOccurrences at: index) key put: (self colors at: index).
		].
	
	^ colorMap := result.
	
	