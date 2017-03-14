hooks
renderIn: aView
	graphers
		withIndexDo: [ :each :i | 
			each yOffset: (i - 1) * yOffset.
			each build.
			aView addFromView: each view ].
	legendBuilder
		ifNotNil: [ graphers
				do: [ :each | 
					each legend: legendBuilder.
					each renderLegend ].
			aView addFromView: legendBuilder view.
			graphers do: #inferLegendInteractions ]