Module Module1

    Sub Main()
        'Задаём строку заголовка консоли:
        Console.Title = "Складываю два числа:"
        Console.BackgroundColor = ConsoleColor.Cyan
        Console.ForegroundColor = ConsoleColor.Black    'цвет текста
        Console.Clear()
        'ввод первого слагаемого
        Console.WriteLine("Введите первое слагаемое:")
        Dim Строка = Console.ReadLine()
        'преобразование строковой переменной в число:
        Dim x = Single.Parse(Строка)
        'ввод второго слагаемого:
        Console.WriteLine("введите второе слагаемое:")
        Строка = Console.ReadLine()
        Dim y = Single.Parse(Строка)
        Dim z = x + y
        Console.WriteLine("Сумма = {0} + {1} = {2}", x, y, z)
        'звуковой сигнал частотой 1000Гц и длительностью 0.5 секунд:
        Console.Beep(1000, 500)
        'приостановить выполнение программы до нажатия какой-нибудь клавиши:
        Console.ReadKey()

    End Sub

End Module
