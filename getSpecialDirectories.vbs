' As far as i know, Visual Basic Script has difference
' with other Vb editions because 
' Scripts executes by WScript/CScript 'ing engines

Sub InitializeShell()
    Set shell = CreateObject("WScript.Shell")
    Set folders = shell.SpecialFolders

    infos = "<table><thead><tr><th>Special Folder list</th></tr></thead><tbody>"

    For i = 0 To folders.Count() - 1
        infos = infos & ("<tr><td>" & folders.Item(i) & "</td></tr>")
    Next
    infos = infos & "</tbody></table>"
    
    Call InitializeDocument(infos)
End Sub

Sub InitializeDocument(ByVal info)
    Set ieo = CreateObject("InternetExplorer.Application")

    ieo.Navigate "about:blank"
    ieo.StatusBar = False
    ieo.ToolBar = False

    ieo.Document.Write("<h1>Internet Explorer</h1>")
    ieo.Document.Write("<p>Page initialized from VBScript document</p>")
    ieo.Document.Write(info)
    ieo.Visible = 1
End Sub

Call InitializeShell()