function Get-SecureRandomKey {
    param (
        [int]$ByteLength
    )

    $rng = [System.Security.Cryptography.RandomNumberGenerator]::Create();
    $bytes = New-Object byte[] $ByteLength;
    $rng.GetBytes($bytes);

    # Clean up
    $rng.Dispose();
    
    # Convert the byte array to a Base64 string
    return [Convert]::ToBase64String($bytes);
}

$DeploymentScriptOutputs = @{}
$DeploymentScriptOutputs['strapiAppKeys'] = ((1..4 | ForEach-Object { Get-SecureRandomKey -ByteLength 32 }) -join ',');
$DeploymentScriptOutputs['strapiJwtSecret'] = Get-SecureRandomKey -ByteLength 32;
$DeploymentScriptOutputs['strapiAdminJwtSecret'] = Get-SecureRandomKey -ByteLength 32;
$DeploymentScriptOutputs['strapiApiTokenSalt'] = Get-SecureRandomKey -ByteLength 32;
$DeploymentScriptOutputs['strapiTransferTokenSalt'] = Get-SecureRandomKey -ByteLength 32;