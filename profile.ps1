set-psreadlineoption -Colors @{ "InlinePrediction" = "`e[38;5;238m" }

function startVenv {
    $envPath = (pipenv --venv) + "\Scripts\Activate.ps1"
    & $envPath
}
Set-Alias activate startVenv


function OpenVirtualEnvFolder {
    Set-Location -Path 'C:\Users\morei\.virtualenvs'
}
Set-Alias venv OpenVirtualEnvFolder


function OpenProjects {
    Set-Location -Path 'C:\Users\morei\personal-projects'
}
Set-Alias proj OpenProjects


function prompt
{
    if ($isAdmin)
    {
        $Date = Get-Date -Format 'hh:mm:ss'
        $p = Split-Path -leaf -path (Get-Location)
        "« $p » `nλ "
    }
    else
    {
        $Date = Get-Date -Format 'hh:mm:ss'
        $p = Split-Path -leaf -path (Get-Location)
        "« $p » `nλ "
    }
}
