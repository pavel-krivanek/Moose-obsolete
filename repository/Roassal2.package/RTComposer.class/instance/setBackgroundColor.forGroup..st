public-background
setBackgroundColor: aColor forGroup: aName

	| backgroundBox g outterGap |
	outterGap := 5 @ 5.
	
	backgroundBox := TRRoundedBoxShape new.
	backgroundBox color: aColor.
	backgroundBox strokeWidth: 0.
	backgroundBox borderRadius: 5.
	
	g := mapping at: aName.
	backgroundBox translateTo: g center.
	backgroundBox extent: g extent + outterGap.
	
	view canvas addShape: backgroundBox.
	backgroundBox pushBack.
	
	backgrounds add: backgroundBox.
	
	^ backgroundBox