$files = @(
    "D:\Music - HDD\Music Repository\2025 Club\Girl, so confusing.mp3",
    "D:\Music - HDD\Music Repository\2025 Club\Teenage Dream (Lyrics).mp3",
    "D:\Music - HDD\Music Repository\2025 Club\Call On Me (Radio Edit) (HD).mp3",
    "D:\Music - HDD\Music Repository\2025 Club\OMG (Audio).mp3",
    "D:\Music - HDD\Music Repository\2025 Club\PARTY 4 U.mp3",
    "D:\Music - HDD\Music Repository\2025 Club\Ma boy (MA BOY).mp3",
    "D:\Music - HDD\Music Repository\2025 Club\Perfect Night.mp3",
    "D:\Music - HDD\Music Repository\2025 Club\Clarity (feat. Foxes).mp3",
    "D:\Music - HDD\Music Repository\2025 Club\Apple.mp3"
)
# $file_name = "Satellite (Update).mp3"
# $input = "D:/Music - HDD/Music Repository/2025 Club/$file_name"
Foreach ($file in $files) {
    $dest_folder = $file.split('.')[0]
    $output = "D:/Music - HDD/Music Repository/Spleeter/$dest_folder"
    python inference.py -i $file -o $output -t vocals -c 'C:\Users\gamer\GitHub\Music-Demixing-with-Band-Split-RNN\src\saved_models\vocals.ckpt'
}


