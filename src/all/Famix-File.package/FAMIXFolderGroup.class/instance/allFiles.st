accessing computed
allFiles
	| files |
	
	files := OrderedCollection new.
	self do: [:folder | files addAll: folder files].
	^ files 