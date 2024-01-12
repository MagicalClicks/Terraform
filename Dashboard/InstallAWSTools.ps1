
$ListofModulesInstalled = (Get-InstalledModule).Name
$RequiredModules = @(
                        "AWS.Tools.Installer",
                        "AWS.Tools.Common",
                        "AWS.Tools.ManagedGrafana"
                    )

foreach ($module in $RequiredModules)
{
    Write-Host "Checking if $module is installed on this instance."
    if ($ListofModulesInstalled -contains "$module")
    { 
        Write-Host "$module module exists."
    } else { 
        Write-Host "$module module does not exist and needs to be installed."
        Install-Module -Name $module -Force
        Write-Host "$module was installed successfully."
    }
}
