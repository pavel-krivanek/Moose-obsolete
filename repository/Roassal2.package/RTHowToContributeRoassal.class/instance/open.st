instance creation
open
	"
	self new open
	"
	| v labels |
	v := RTView new.
	v add: (RTBitmap new form: self picAsForm) element.
	labels := RTLabel
		elementsOn:
			#('You can help us making Roassal better by:' 
			'  - Sharing your cool visualizations'
			'  - Submitting bug fixes'
			'  - Saying hello on Slack'
			'  - Buying a printed version of AgileVisualization'
			''
			'More information on: ').
	labels
		add:
			((RTLabel new color: Color veryVeryDarkGray)
				elementOn: 'http://AgileVisualization.com').
				
				
	"labels
		addAll:
			(RTLabel
				elementsOn:
					#('A printed version and an eBook are available for sale.' '' '' 'We are deeply thankful to all of you involved' 'in the development of Roassal'))."
	v add: labels.
	RTVerticalLineLayout on: labels.
	TRConstraint move: v elements first onTheLeftOf: labels.


	"Adding animation"
	self addAnimationTo: v.
	v openInWindowSized: 600 @ 400 titled: 'Roassal Visualization Engine'