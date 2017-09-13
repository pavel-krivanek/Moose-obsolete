toolbar
canvasToolbarFor: aBuilder
	<opCanvasToolbar: #OPUmlClassEditorPlugin>
	(aBuilder item: 'Layout') action: [  ].
	aBuilder model diagramController addLayoutMenu: aBuilder parent: 'Layout'