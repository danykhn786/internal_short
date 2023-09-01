Attribute VB_Name = "Module1"
Sub CalculateTotalRevenue()
    Dim ws As Worksheet
    Dim LastRow As Long
    
    Set ws = ThisWorkbook.Sheets("Sheet1")
    

    LastRow = ws.Cells(ws.Rows.Count, "A").End(xlUp).Row
    

    ws.Cells(1, "D").Value = "Total Revenue"

    For i = 2 To LastRow
        ws.Cells(i, "D").Value = ws.Cells(i, "B").Value * ws.Cells(i, "C").Value
    Next i
End Sub

