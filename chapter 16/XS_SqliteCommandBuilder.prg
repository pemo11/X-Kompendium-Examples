// file: XS_SqliteCommandBuilder.prg
// Example for the SqliteCommandBuilder in action
// use xsc .\16_SqliteCommandBuilder.prg /r:System.Data.Sqlite.dll

using System.Data.Sqlite

Function Start() As Void
    var cnStr := i"Data Source=.\mondial.db"
    var cmdText := "Select * From Country"
    var da := SqliteDataAdapter{cmdText, cnStr}
    // its not necessary to actually retrieve records from the database
    // lets build a commandBuilder
    var cb := SqliteCommandBuilder{da}
    ? cb:GetDeleteCommand():CommandText
    var paraCount := cb:GetDeleteCommand():Parameters:Count
    ? i"{paraCount} Parameters"
    ? cb:GetInsertCommand():CommandText
    paraCount := cb:GetInsertCommand():Parameters:Count
    ? i"{paraCount} Parameters"
    ? cb:GetUpdateCommand():CommandText
    paraCount := cb:GetUpdateCommand():Parameters:Count
    ? i"{paraCount} Parameters"
 