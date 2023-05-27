Imports System.Text.Json
Imports Generator.Generator
Imports Microsoft.VisualBasic.FileIO

Module Program
    Sub Main(args as String())
        Dim input As String
        Dim output As String
        Dim news As News

        input = FileSystem.ReadAllText("../input.json")

        news = JsonSerializer.Deserialize(Of News)(input)

        output = JsonSerializer.Serialize(news)

        FileSystem.WriteAllText("../output.json", output, True)
    End Sub
End Module
