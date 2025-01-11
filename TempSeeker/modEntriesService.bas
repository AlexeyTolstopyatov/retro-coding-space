Attribute VB_Name = "modDefaultTemporaryNamings"

Private _userCatalogName As String = "MagicBook"
Private SuggestedFiles As Collection
[Description("Returns Count of elements in collection")]
Public Property Get EntriesCount() As Integer
    Return SuggestedFiles.Count
End Property
[Description("Sets catalog name")]
Public Property Let UserCatalogName(ByVal name As String)
    _userCatalogName = name
End Property
[Description("Returns catalog name")]
Public Property Get UserCatalogName() As String
    Return _userCatalogName
End Property
[Description("Returns list of files from collection")]
Public Function GetEntriesArray() As Variant()
    Return SuggestedFiles.Items()
End Function
[Description("Processes suggested files. Writes in collection")]
Public Sub SeekTemporaryEntries()
    Dim path As String = "C:\Users\" & UserCatalogName & "\AppData\Local\Temp\"
    Dim file As String
    Set SuggestedFiles = New Collection
    file = FileSystem.Dir(path)
    Do While file <> ""
        SuggestedFiles.Add(file)
        file = FileSystem.Dir()
    Loop
    MsgBox("filled: " & SuggestedFiles.Count)
End Sub
[Description("Removes all detected files and catalogs from disk")]
Private Sub KillTemporaryEntries()
    Dim path As String = "C:\Users\" & UserCatalogName & "\AppData\Local\Temp\*tmp"
    Dim file As String
    Set SuggestedFiles = New Collection
    file = FileSystem.Dir(path)
    Do While file <> ""
        FileSystem.Kill(path & file)
        file = FileSystem.Dir()
    Loop
End Sub
