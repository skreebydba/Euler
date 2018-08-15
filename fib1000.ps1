[bigint]$fib1 = 1;
[bigint]$fib2 = 1;
$thousand = 0;
$i = 1;
$fib = @($fib1, $fib2);

$fib[0];
$fib[1];

while($thousand -eq 0)
{
    $fib += $fib[$i] + $fib[$i - 1];
    
    if($fib[$i].ToString().Length -eq 1000)
    {
        $fib[$i];
        $i;
        $thousand = 1;
    }  

    $i++;
}


