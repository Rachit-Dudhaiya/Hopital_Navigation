Get-ChildItem -Path . -Filter "*.html" -Recurse | ForEach-Object {
    $content = Get-Content $_.FullName -Raw
    $newContent = $content -replace 'department_details', 'department' -replace 'find_your_booking', 'booking' -replace 'hospital_map_directory', 'hospital' -replace 'home_hospital_navigation', 'home'
    if ($content -ne $newContent) {
        Set-Content -Path $_.FullName -Value $newContent -NoNewline
    }
}
