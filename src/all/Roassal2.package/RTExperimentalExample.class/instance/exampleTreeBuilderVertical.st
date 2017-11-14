sources
exampleTreeBuilderVertical
"click on one of the elements"
| b |
b := RTInteractiveTreeBuilder new.
b view canvas color: (Color colorFrom: '#EEE').
b explore: Collection using: #subclasses.
b labelShape angleInDegree: -20.
b downward.
"b upward."
b gap: 20@100.
b paddingText: -2@ -10.
b build.
^ b view



