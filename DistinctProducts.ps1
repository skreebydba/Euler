[bigint]$base = 0;
[bigint]$exp = 0;
[array]$products = @();

for($exp = 2;$exp -le 100;$exp = $exp + 1)
{
    for ($base = 2;$base -le 100;$base = $base + 1)
    {
        [bigint]$product = [math]::pow($base,$exp);
        $products += $product;
    }
}

$products = $products | Sort-Object | Get-Unique;
$products.Length;
