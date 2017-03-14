GLMScriptingEditorTemplate offers a simple template for building scripting editors.

It offers basically three panes:
- one for the script
- one for the set of input variables
- one for the preview once you accept the script

A typical case is provided by the GLMMondrianEasel.

To open any of the subclasses, you need to provide an array of associations whose values represent the names of a variables and the values are the objects referred by these variables. These variables can then be used in the code of the script.