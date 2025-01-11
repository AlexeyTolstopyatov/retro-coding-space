Attribute VB_Name = "modModelController"
Attribute VB_Description = "Needs to check information inserted in Window Controls"

[Description("Checks correct naming of User catalog in FileSystem")]
Public Function IsUserNameCorrect(dir As String) As Boolean
    Dim file As String = FileSystem.Dir("C:\Users\" & dir, vbDirectory)
    If file <> "" Then
        Return True
    Else
        Return False
    End If
End Function
[Description("Fills Listbox control with files and folders")]
Public Sub FillEntriesList(ByRef list As ListBox)
    SeekTemporaryEntries()
    ' ForEach
    Dim entry As String
    For Each entry In GetEntriesArray()
        list.AddItem(entry)
    Next
End Sub
[Description("Enables Disables Control")]
Public Sub EnableButton(ByRef btn As CommandButton, ByVal flag As Boolean)
    btn.Enabled = flag
End Sub
