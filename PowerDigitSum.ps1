[bigint]$bignum = 1;

for($i = 1; $i -le 1000; $i++)
{

    $bignum = $bignum * 2;

}

$bigstr = $bignum.ToString();
$bigarr = $bigstr.ToCharArray();
$len = $bigarr.Length;

$total = [int]::Parse($bigarr[0]) + [int]::Parse($bigarr[1]);

for($i = 2;$i -le $len;$i++)
{
    $total = $total + [int]::Parse($bigarr[$i]);
}

$total;