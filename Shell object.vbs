set sh = CreateObject("Shell.Application")
set obj = sh.NameSpace("C:\")
MsgBox "C:\ Drive name is " & obj.Title, 48, "Info"