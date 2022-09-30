#tag Class
Protected Class BingoGame
	#tag Method, Flags = &h0
		Sub CallNumber()
		  Position = Position + 1
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetCurrentNumber() As Integer
		  If BingoNumbers.Count > 0 And Position >= 0 And Position <= BingoNumbers.LastIndex Then
		    Return BingoNumbers(Position)
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetPreviousNumber() As Integer
		  If BingoNumbers.Count > 0 And Position >= 1 And Position <= BingoNumbers.LastIndex Then
		    Return BingoNumbers(Position - 1)
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HasBeenCalled(number As Integer) As Boolean
		  Return BingoNumbers.IndexOf(number) < Position
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsGameOver() As Boolean
		  Return Position >= BingoNumbers.LastIndex
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ResetGame()
		  BingoNumbers.RemoveAll
		  Position = -1
		  
		  For i As Integer = 1 To 90
		    BingoNumbers.Add(i)
		  Next
		  BingoNumbers.Shuffle
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private BingoNumbers() As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Position As Integer
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
