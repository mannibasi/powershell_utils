function Get-Formatted-Filename($filename) {
    $tempString = $filename
    $tempString = Get-String-With-Collapsed-Spaces($tempString)
    $tempString = Get-String-With-Underscores-For-Spaces($tempString)
    return $tempString
}

function Get-String-With-Underscores-For-Spaces($string) {
    return $string -replace  " ", "_";
}

function Get-String-With-Collapsed-Spaces($string) {
    return $string -replace  "  ", " ";
}
