Function New-SelfSignedCert {
    <#
    #>
    #Requires -RunAsAdministrator
    [CmdletBinding()]
    Param(
        [Parameter()]
        [String]$Subject = 'DevtCert'
    )

    Begin {

        $CertStoreLocation = 'Cert:\LocalMachine\My'
        $CertStoreLocationRoot = 'Cert:\LocalMachine\Root'
        $CertStoreLocationPublisher = 'Cert:\LocalMachine\TrustedPublisher'

        $CertType = 'CodeSigningCert'
        $CertName = $Subject

        $Params = @{
            Subject           = $CertName
            CertStoreLocation = $CertStoreLocation
            CertType          = $CertType
        }

        $RootStore = [System.Security.Cryptography.X509Certificates.X509Store]::new('Root', 'LocalMachine')
        $PublisherStore = [System.Security.Cryptography.X509Certificates.X509Store]::new('TrustedPublisher', 'LocalMachine')

    }

    Process {

        try {
            $Cert = New-SelfSignedCertificate @Params
        } catch {
            Write-Error "Failed to create certificate: $_"
            return
        }

        try {
            $RootStore.Open('ReadWrite')
            $RootStore.Add($Cert)
        } catch {
            Write-Error "Failed to add certificate to Root store: $_"
            return
        } finally {
            $RootStore.Close()
        }

        try {
            $PublisherStore.Open('ReadWrite')
            $PublisherStore.Add($Cert)
        } catch {
            Write-Error "Failed to add certificate to Publisher store: $_"
            return
        } finally {
            $PublisherStore.Close()
        }

    }

    End {

        $AssertPersonal = Get-ChildItem -Path $CertStoreLocation | Where-Object { $_.Subject -eq "CN=$CertName" }
        $AssertRoot = Get-ChildItem -Path $CertStoreLocationRoot | Where-Object { $_.Subject -eq "CN=$CertName" }
        $AssertPublisher = Get-ChildItem -Path $CertStoreLocationTrustedPublisher |
            Where-Object { $_.Subject -eq "CN=$CertName" }

        Write-Host 'Certificate created successfully and added to the following stores:'
        Write-Host "Personal: $($AssertPersonal.Subject)"
        Write-Host "Root: $($AssertRoot.Subject)"
        Write-Host "Publisher: $($AssertPublisher.Subject)"
        Write-Host 'To Sign a script with this certificate, use the following command:'
        Write-Host "Set-AuthenticodeSignature -FilePath 'C:\Path\To\Script.ps1' -Certificate $($AssertPersonal.Thumbprint) -TimestampServer 'http://timestamp.digicert.com'"
    }
}
