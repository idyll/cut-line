
module.exports =
  activate: ->
    atom.workspaceView.command "cut-line:cut-line", => @cutLine()
    atom.workspaceView.command "cut-line:copy-line", => @copyLine()

  cutLine: ->
    selection = atom.workspace.getActiveEditor().getSelection()
    if selection.getText().length == 0
      editor = atom.workspace.activePaneItem
      editor.selectLine()
      selection = atom.workspace.getActiveEditor().getSelection()

    selection.cut()

  copyLine: ->
    selection = atom.workspace.getActiveEditor().getSelection()
    if selection.getText().length == 0
      editor = atom.workspace.activePaneItem
      editor.selectLine()
      selection = atom.workspace.getActiveEditor().getSelection()

    selection.copy()
