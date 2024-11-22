VERSION 5.00
Begin VB.Form frmMain 
   Caption         =   "ErrorLookup"
   ClientHeight    =   2625
   ClientLeft      =   6000
   ClientTop       =   5430
   ClientWidth     =   4845
   LinkTopic       =   "Form1"
   ScaleHeight     =   2625
   ScaleWidth      =   4845
   Begin VB.Frame Frame1 
      Caption         =   "Main"
      Height          =   2535
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   4815
      Begin VB.CommandButton btnResult 
         Caption         =   "Compare"
         Height          =   375
         Left            =   3600
         TabIndex        =   4
         Top             =   720
         Width           =   1095
      End
      Begin VB.TextBox txtError 
         Height          =   285
         Left            =   120
         TabIndex        =   2
         Top             =   360
         Width           =   4575
      End
      Begin VB.Frame Frame2 
         Caption         =   "Result"
         Height          =   1215
         Left            =   120
         TabIndex        =   1
         Top             =   1200
         Width           =   4575
         Begin VB.Label lblResult 
            Caption         =   "Result placed here"
            Height          =   615
            Left            =   240
            TabIndex        =   3
            Top             =   360
            Width           =   4095
         End
      End
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim StandardErrors

Private Sub btnResult_Click()
    Dim index
    index = CInt(txtError.Text)
    lblResult.Caption = StandardErrors(index)
End Sub

Private Sub Form_Load()
    StandardErrors = Array("Sussess", "WrongFunction", "Unable to find", "Wrong path", "Unable to open", "Access denied", "Wrong descriptor", "Memory corrupted", "Low memory", "")
End Sub

