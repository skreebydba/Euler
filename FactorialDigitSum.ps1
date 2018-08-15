[bigint]$factorial = 1;

for($i = 2;$i -le 100;$i++)
{
    $factorial = $factorial * $i;
}

$factorial;