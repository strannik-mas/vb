Attribute VB_Name = "���_���������"
Option Explicit

Sub ���_������()
    MsgBox "������ ����!" & vbNewLine _
        & "����!"
End Sub

Sub ���_����()
    Dim dtEnd As Date '���������� ���� ����/�����
    Dim intMin As Integer
    
    '���������� ������� ����� �������
    'dtEnd = #1:10:00 PM#
    dtEnd = InputBox("������� ����� ���������", _
        "��� ����", #12:10:00 PM#)
    intMin = (dtEnd - Time) * 24 * 60
    If intMin > 0 Then
    MsgBox "������� �����: " & Time & _
        vbNewLine & "�� ����� ������� �������� " _
        & intMin & " ���.", vbInformation, "��� ����"
    Else
        MsgBox "������� �����: " & Time & _
        vbNewLine & "��� ���� - ���� ������ ���������� ��� " _
        & Abs(intMin) & " ���.", vbInformation, "��� ����"
    End If
    
End Sub

Sub �������_����()
    Dim varMonth As Variant
    Dim varMonth1 As Variant
    
    varMonth = InputBox("������� ����� ������", _
        "������� ����")
    Select Case varMonth
        Case 12, 1, 2
            MsgBox "winter"
        Case 3, 4, 5
            MsgBox "spring"
        Case 6, 7, 8
            MsgBox "summer"
        Case 9, 10, 11
            MsgBox "�����"
        Case Else
            MsgBox "x month", vbCritical
            �������_����
    End Select
End Sub

Sub �����������()
    Dim intKey As Integer
    intKey = MsgBox("�� �������� ����������?", _
    vbQuestion + vbYesNo + vbDefaultButton2, _
        "�������")
   If intKey = vbYes Then
    MsgBox "����������"
    �������_����
   Else
    MsgBox "�� ����"
    ���_����
   End If
End Sub
