#If, Elseif, and Else are used to run commands If certain statments are met


#Simple example proves decimals can work in a string for this operation (May not be the best way to do it)
Function Test-MathInString {

$x="5.5"

if ($x -gt '5.4') {
Write-Output True
	} elseif ($x -lt '5.4') {
Write-Output False
	} else {
Write-Output fault
	}
}