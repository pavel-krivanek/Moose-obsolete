*Roassal2-Plugins
grapherVisualizationFromFileName: aFileName
	"Ask the users which columns to visualize. Return a grapher instance"
	| g tab title columnsAsString d normalizer |
	tab := RTTabTable new input: aFileName asFileReference contents usingDelimiter: #,.
	title := 'The file has ', tab numberOfColumns asString, String cr, 'Which columns do you want to plot?'.
	columnsAsString := UIManager default request: title initialAnswer: '1 2 3'.
	(columnsAsString isNil or: [ columnsAsString isEmpty ]) ifTrue: [ ^ RTView new ].
	
	tab removeFirstRow.
	
	normalizer := RTMultiLinearColor new.
	g := RTGrapher new.
	columnsAsString substrings doWithIndex: [ :s :dataIndex |
		d := RTData new.
		d noDot.
		d connectColor: (normalizer level: (dataIndex / tab numberOfColumns)) trans. 
		d points: ((tab cleanedValuesOfColumn: s asInteger) collect: [ :ss | Float readFrom: ss ]).
		g add: d.
	].
	^ g