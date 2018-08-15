function Test-Palindrome {
  <#
  .SYNOPSIS
  Checks to see if the sum of a digit and its reverse is palindromic (123 + 321 = 444)
  .DESCRIPTION
  Checks for palindromes - solves Project Euler problem 55 - https://projecteuler.net/problem=55
  .EXAMPLE
  Test-Palindrome
  .EXAMPLE
  Give another example of how to use it
  .PARAMETER computername
  The computer name to query. Just one.
  .PARAMETER logname
  The name of a file to write failed computer names to. Defaults to errors.txt.
  #>
  [CmdletBinding(SupportsShouldProcess=$True,ConfirmImpact='Low')]
  param
  (
    [Parameter(Mandatory=$True,
    ValueFromPipeline=$True,
    ValueFromPipelineByPropertyName=$True,
      HelpMessage='What number do you want to test?')]
    [Alias('inputnum')]
    [bigint]$number,
    [Parameter(Mandatory=$false,
    ValueFromPipeline=$false,
    ValueFromPipelineByPropertyName=$True,
      HelpMessage='Counter value?')]
    [Alias('iterations')]
    [int]$count = 0
  )

    process 
    {

    $count += 1;
    $numstr = $number.ToString();

    $numarr = $numstr.ToCharArray();

    [array]::Reverse($numarr);

    $numrev = [bigint]::Parse(-join($numarr));

    $total = $number + $numrev;

    $totstr = $total.ToString();

    $totarr = $totstr.ToCharArray();

    [array]::Reverse($totarr);

    $totrev = [bigint]::Parse(-join($totarr));

    if($total -eq $totrev)
    {
        return 0;
    }
    elseif(($total -ne $totrev) -and ($count -le 50))
    {
        $count += 1;
        Test-Palindrome -number $total -count $count;
    }
    else
    {
        return 1;
    };

    }
}
