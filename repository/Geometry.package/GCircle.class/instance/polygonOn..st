public interface
polygonOn: points
|polygonSegm firstP notUsedPoints currentP|
	currentP := points anyOne.
	firstP := currentP.
	notUsedPoints := points asOrderedCollection remove: currentP; yourself.
	polygonSegm := OrderedCollection new.
	
	[ notUsedPoints isNotEmpty ] whileTrue: [
		| nextP |
		nextP := notUsedPoints detectMin: [ :point | point dist: currentP ].
		polygonSegm add:( GSegment with: currentP with: nextP).
		currentP := nextP.
		notUsedPoints remove: currentP ].
	polygonSegm add:( GSegment with: currentP with: firstP).
	^ polygonSegm