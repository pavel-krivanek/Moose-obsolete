*Moose-Finder
gtInspectorActionOpenInMoose
	<gtInspectorAction>
	^ GLMGenericAction new
		action: [ self openInMoose ];
		icon: MooseIcons mooseIcon asGrayScaleWithAlpha;
		title: 'Open in Moose'