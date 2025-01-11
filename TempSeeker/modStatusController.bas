Attribute VB_Name = "modStatusController"

' All logger API stores here

Public Sub RaiseError(ByRef logger As Label, text As String)
    logger.ForeColor = ColorConstants.vbRed
    logger.Caption = text
End Sub

Public Sub RaiseInformation(ByRef logger As Label, text As String)
    logger.ForeColor = ColorConstants.vbBlue
    logger.Caption = text
End Sub