*XML-Parser-GTExtensions
addRemoveActionTo: aPresentation in: aComposite inContext: aGTInspector
	(self canRemoveFromParent
		and: [aGTInspector panes size > 1
			and: [aGTInspector panes first ~= aComposite pane]])
		ifTrue: [
			aPresentation
				act: [| currentPane |
					self removeFromParent.
					currentPane := aComposite pane.
					[aGTInspector panes last = currentPane]
						whileFalse: [aGTInspector removeLastPane].
					aGTInspector removeLastPane.
					aGTInspector panes do: [:each | each update]]
				icon: GLMUIThemeExtraIcons glamorousRemove
				on: $r
				entitled: 'Remove']