[int]$number = 220;
[int]$div = 0;

for($i = 1;$i -le ($number / 2);$i++)
{
    if($number % $i -eq 0)
    {
        $div = $div + $i;
    }
}

$div;