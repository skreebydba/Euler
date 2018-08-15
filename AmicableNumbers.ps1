[int]$number = 0;
[string]$query;

for($number = 2;$number -le 10000;$number++)
{
    for($i = 1;$i -le ($number / 2);$i++)
    {
        if($number % $i -eq 0)
        {
            $div = $div + $i;
        }
    }

    $query = "INSERT INTO DivisorSums(BaseNumber, DivisorSum) VALUES($number, $div);";
    Invoke-Sqlcmd -ServerInstance "CNCYBOOK82\DEV2017" -Database Euler -Query $query;
    $div = 0;
}