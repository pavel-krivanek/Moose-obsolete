*XML-Parser-GTExtensions
addRemoveActionTo: aPresentation in: aComposite inContext: aGTInspector
	(self supportsRemoveAction not
		or: [aGTInspector panes size <= 1
			or: [(aGTInspector panes first port: #entity) value = self]])
		ifTrue: [^ self].

	aPresentation
		act: [| removeStartIndex |
			self removeFromParent.

			"remove all panes starting with the first pane inspecting
			the receiver (not necessarily the current pane)"
			removeStartIndex :=
				aGTInspector panes findFirst: [:each |
					(each port: #entity) value = self].
			removeStartIndex
				to: aGTInspector panes size
				do: [:i |
					aGTInspector removeLastPane].

			"update the remaining panes"
			aGTInspector panes do: [:each |
				each update]]
		icon: GLMUIThemeExtraIcons glamorousRemove
		on: $X
		entitled: 'Remove'.