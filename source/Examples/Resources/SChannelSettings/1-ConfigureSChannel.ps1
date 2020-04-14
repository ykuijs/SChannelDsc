
<#PSScriptInfo

.VERSION 1.2.0

.GUID 80d306fa-8bd4-4a8d-9f7a-bf40df95e661

.AUTHOR DSC Community

.COMPANYNAME DSC Community

.COPYRIGHT DSC Community contributors. All rights reserved.

.TAGS

.LICENSEURI https://github.com/dsccommunity/SChannelDsc/blob/master/LICENSE

.PROJECTURI https://github.com/dsccommunity/SChannelDsc

.ICONURI https://dsccommunity.org/images/DSC_Logo_300p.png

.EXTERNALMODULEDEPENDENCIES

.REQUIREDSCRIPTS

.EXTERNALSCRIPTDEPENDENCIES

.RELEASENOTES
Updated author, copyright notice, and URLs.

.PRIVATEDATA

#>

<#

.DESCRIPTION
 This example shows how to configure SChannel.

#>

    Configuration Example
    {
        param(
        )

        Import-DscResource -ModuleName SChannelDsc

        node localhost {
            SChannelSettings 'ConfigureSChannel'
            {
                IsSingleInstance              = 'Yes'
                TLS12State                    = 'Enabled'
                DiffieHellmanMinClientKeySize = 4096
                DiffieHellmanMinServerKeySize = 4096
                EnableFIPSAlgorithmPolicy     = $false
            }
        }
    }
