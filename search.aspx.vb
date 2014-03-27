
Partial Class search
    Inherits System.Web.UI.Page

    Protected Sub tbPlayer_TextChanged(sender As Object, e As EventArgs) Handles tbPlayer.TextChanged
        Dim searchWord As String
        searchWord = "Select * From Players where (playerName Like '%" + tbPlayer.Text.ToString() = "%')"
        PlayerDate.SelectCommand = searchWord
    End Sub
End Class
