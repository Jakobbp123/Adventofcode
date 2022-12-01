##[array]$puzzleinput = (Get-content .\input_demo.txt)
[array]$puzzleinput = (Get-content .\input.txt)
[array]$calories = $null

for($i = 0;$i -lt $puzzleinput.Length;$i++){

if($i -eq 0){
$current = [int32]$puzzleinput[$i]
}
elseif($puzzleinput[$i] -eq ''){
$calories += $current
$current = 0
}
elseif(($i+1) -eq $puzzleinput.Length){
$current += [int32]$puzzleinput[$i]
$calories += $current

}
else{
    $current += [int32]$puzzleinput[$i]
}
}

$result = $calories | Sort-Object -Descending | Select-Object -First 3 Where($result.Count)

Write-host "$result"