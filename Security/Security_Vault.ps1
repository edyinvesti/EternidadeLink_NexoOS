function Blindar-Arquivo { param($path) $c = Get-Content $path; [Convert]::ToBase64String([System.Text.Encoding]::UTF8.GetBytes($c)) | Out-File $path }
