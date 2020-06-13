$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'
. "$here\$sut"

Describe "Get-Formatted-Filename" {
    It "Clean up filename with multiple spaces" {
        Get-Formatted-Filename("Some file name  1.something") | Should -Be 'Some_file_name_1.something'
    }
}

Describe "Get-Formatted-String-With-Underscores-For-Spaces" {
    It "Replace spaces with underscores" {
        Get-Formatted-String-With-Underscores-For-Spaces("Some random string  1") | Should -Be 'Some_random_string__1'
    }
}

Describe "Get-Formatted-String-With-Collapsed-Spaces" {
    It "Replace double spaces with a single space" {
        Get-Formatted-String-With-Collapsed-Spaces("Some other random string  1") | Should -Be 'Some other random string 1'
    }
}

Describe "Get-Formatted-String-With-Collapsed-Spaces" {
    It "Replace multi spaces with a single space" {
        Get-Formatted-String-With-Collapsed-Spaces("Some other  random   string    1") | Should -Be 'Some other random string 1'
    }
}