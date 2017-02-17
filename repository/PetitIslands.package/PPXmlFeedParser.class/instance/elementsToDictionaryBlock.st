xmlSupport
elementsToDictionaryBlock
 	^ [ :elements | | d | 
		d := Dictionary new.
		elements do: [ :e | d at: e first asSymbol put: e second ].
		d
	]