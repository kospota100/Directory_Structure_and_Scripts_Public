$Pictures = Get-ChildItem -Path 'D:\Videos\Captures\' -Filter 'Grand Theft Auto V*.png'
$Movies = Get-ChildItem -Path 'D:\Videos\Captures\' -Filter 'Grand Theft Auto V*.mp4'

$Pictures = @($Pictures)
$Movies = @($Movies)

# if ( $null -ne $Pictures -and $null -ne $Movies ) {
#     $ReadyMove = $Pictures + $Movies
# }
# elseif ( $null -ne $Pictures -and $null -eq $Movies ) {
#     $ReadyMove = $Pictures
# }
# elseif ( $null -eq $Pictures -and $null -ne $Movies ) {
#     $ReadyMove = $Movies
# }
# else { return }

$ReadyMove = $Pictures + $Movies

foreach ( $Files in $ReadyMove ) {
    Move-Item -Path $Files.FullName -Destination ("D:\Pictures\+ GTAV captures\" + $Files.Name)
    }