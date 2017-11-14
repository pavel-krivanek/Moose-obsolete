sources
exampleTreeBuilderHorizontal
"click on one of the elements"
| b |
b := RTInteractiveTreeBuilder new.
b view canvas color: (Color colorFrom: '#EEE').
b explore: Collection using: #subclasses.
b rightward.
"b leftward."
b gap: 200@10.
b build.
^ b view
