$command = @('init -migrate-state', 'fmt','validate', 'plan', 'apply -auto-approve')

foreach ($c in $command) {
    Write-Output "Terraform $c"
}