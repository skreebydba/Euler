[bigint]$factorial = 1;

for($i = 2;$i -le 100;$i++)
{
    $factorial = $factorial * $i;
}

$factorial;

$factstr = $factorial.ToString();
$factarr = $factstr.ToCharArray();
$len = $factarr.Length;

$total = [int]::Parse($factarr[0]) + [int]::Parse($factarr[1]);

for($i = 2;$i -lt $len;$i++)
{
    $total = $total + [int]::Parse($factarr[$i]);
}

$total;