
Partial Class Default2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        playersTB.Focus()
    End Sub

    Protected Sub SqlDataSource1_Selecting(sender As Object, e As SqlDataSourceSelectingEventArgs) Handles SqlDataSource1.Selecting

    End Sub

    Protected Sub playersTB_TextChanged(sender As Object, e As EventArgs) Handles playersTB.TextChanged
        Dim searchword As String
        searchword = "Select * From Players where (plName Like '%" + playersTB.Text.ToString() + "%')"
        SqlDataSource1.SelectCommand = searchword
    End Sub
End Class