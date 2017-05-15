instance creation
open
	| v labels |
	v := RTView new.
	v add: (RTBitmap new form: TRPlatform current roassalIcon) element.
	labels := RTLabel
		elementsOn:
			#('Agile Visualization is about crafting interactive' 'visualizations in extremely short production cycle.' 'Roassal is a visualization engine that promotes' 'Agile Visualization.' '' 'A large body of documentation is available online: ').
	labels
		add:
			((RTLabel new color: Color veryVeryDarkGray)
				elementOn: 'http://AgileVisualization.com').
	labels
		addAll:
			(RTLabel
				elementsOn:
					#('A printed version and an eBook are available for sale.' '' '' 'We are deeply thankful to all of you involved' 'in the development of Roassal')).
	v add: labels.
	RTVerticalLineLayout on: labels.
	TRConstraint move: v elements first onTheLeftOf: labels.


	"Adding animation"
	self addAnimationTo: v.
	v openTitled: 'Roassal Visualization Engine'