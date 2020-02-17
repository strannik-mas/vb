Attribute VB_Name = "мои_процедуры"
Option Explicit

Sub мой_привет()
    MsgBox "Привет всем!" & vbNewLine _
        & "обед!"
End Sub

Sub мои_часы()
    Dim dtEnd As Date 'переменная типа дата/время
    Dim intMin As Integer
    
    'присвоение времени конца занятий
    'dtEnd = #1:10:00 PM#
    dtEnd = InputBox("Введите время окончания", _
        "Мои часы", #12:10:00 PM#)
    intMin = (dtEnd - Time) * 24 * 60
    If intMin > 0 Then
    MsgBox "Текущее время: " & Time & _
        vbNewLine & "До конца занятий осталось " _
        & intMin & " мин.", vbInformation, "Мои часы"
    Else
        MsgBox "Текущее время: " & Time & _
        vbNewLine & "ЕЛЫ ПАЛЫ - ПОРА кушать пироженные уже " _
        & Abs(intMin) & " мин.", vbInformation, "Мои часы"
    End If
    
End Sub

Sub времена_года()
    Dim varMonth As Variant
    Dim varMonth1 As Variant
    
    varMonth = InputBox("Введите номер месяца", _
        "времена года")
    Select Case varMonth
        Case 12, 1, 2
            MsgBox "winter"
        Case 3, 4, 5
            MsgBox "spring"
        Case 6, 7, 8
            MsgBox "summer"
        Case 9, 10, 11
            MsgBox "осень"
        Case Else
            MsgBox "x month", vbCritical
            времена_года
    End Select
End Sub

Sub вопросДаНет()
    Dim intKey As Integer
    intKey = MsgBox("Вы согласны продолжить?", _
    vbQuestion + vbYesNo + vbDefaultButton2, _
        "вопросы")
   If intKey = vbYes Then
    MsgBox "продолжаем"
    времена_года
   Else
    MsgBox "ты куку"
    мои_часы
   End If
End Sub
