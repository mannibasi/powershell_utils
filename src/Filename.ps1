function Rename-File {
    param(
        [Object] $file
    )
    $newFilename = Get-Formatted-Filename($file.Name);
    Rename-Item $file -NewName $newFilename;
}

function Get-Formatted-Filename($filename) {
    $tempString = $filename
    $tempString = Get-Formatted-String-With-Collapsed-Spaces($tempString)
    $tempString = Get-Formatted-String-With-Underscores-For-Spaces($tempString)
    return $tempString
}

function Get-Formatted-String-With-Underscores-For-Spaces {
    param(
        [string] $string
    )
    return $string.Replace(" ", "_");
}

function Get-Formatted-String-With-Collapsed-Spaces {
    param(
        [string] $string
    )
    while($string.Contains("  ")) {
        $string = $string.Replace("  ", " ");
    }
    return $string;
}
