function Get-Formatted-Filename($filename) {
    $tempString = $filename
    $tempString = Get-String-With-Collapsed-Spaces($tempString)
    $tempString = Get-String-With-Underscores-For-Spaces($tempString)
    return $tempString
}

function Get-String-With-Underscores-For-Spaces {
    param(
        [string] $string
    )
    return $string.Replace(" ", "_");
}

function Get-String-With-Collapsed-Spaces {
    param(
        [string] $string
    )
    while($string.Contains("  ")) {
        $string = $string.Replace("  ", " ");
    }
    return $string;
}
