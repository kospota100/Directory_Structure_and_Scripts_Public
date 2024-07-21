function Move-Media {

    param ( $GameName )

    $Pictures = Get-ChildItem -Path "D:\Videos\Captures\" -Filter "$GameName*.png"
    $Movies = Get-ChildItem -Path "D:\Videos\Captures\" -Filter "$GameName*.mp4"

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
        Move-Item -Path $Files.FullName -Destination ("D:\Pictures\+ $GameName captures\" + $Files.Name)
        }

}

Move-Media -GameName 'VRChat'
Move-Media -GameName 'Minecraft'
Move-Media -GameName 'Unrailed!'