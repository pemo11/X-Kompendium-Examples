// file: 14_DirectoryMove.prg
// Example for moving a directory with its content

Using System
Using System.IO
Using System.Linq

/// <summary>
/// Move a directory with subdirectories and files by moving each item
/// </summary>
/// <param name="sourcePath"></param>
/// <param name="targetPath"></param>
Function MoveDirectory(sourcePath As String, targetPath As String) As Void
	Var files := Directory.EnumerateFiles(sourcePath, "*", SearchOption.AllDirectories).GroupBy({s => Path.GetDirectoryName(s)})
	Foreach Var folder In files
		Var targetFolder := folder:Key:Replace(sourcePath, targetPath)
		Directory.CreateDirectory(targetFolder)
		Foreach Var file In folder
			Var targetFile := Path.Combine(targetFolder, Path.GetFileName(file))
			If File.Exists(targetFile)
				File.Delete(targetFile)
			End If
			File.Move(file, targetFile)
		Next
	Next

	Directory.Delete(sourcePath, True)


// Move a directory from A to B
Function Start() As Void
    // Creating tmpDirectory1
	var dir1 := Path.Combine(Path.GetTempPath(), "sub1")
	var dir2 := Path.Combine(Path.GetTempPath(), "sub2")
	if !Directory.Exists(dir1)
	   Directory.CreateDirectory(dir1)
	endif
	if !Directory.Exists(dir2)
	   Directory.CreateDirectory(dir2)
	endif
	// Create a couple of files in dir1
	For Local i := 1 UpTo 10
	   var txtPath := Path.Combine(dir1, i"File{i}.txt")
	   Begin Using var fi := File:CreateText(txtPath)
	   
	   End Using
	Next
	MoveDirectory(dir1, dir2)
