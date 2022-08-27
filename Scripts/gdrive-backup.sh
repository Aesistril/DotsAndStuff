read -p "Folder to backup: " backfold
echo "Archiving..."
tar -cvf $backfold.tar $backfold
echo "Please put a password"
gpg --cipher-algo AES256 -c $backfold.tar
echo "Encrypting... This could take a while"
rm $backfold.tar
echo "Generating MD5 sums"
md5sum $backfold.tar.gpg > $backfold.tar.gpg.md5
echo "Sending files to Google Drive"
rclone -P copy $backfold.tar.gpg gdrive:backups && rclone copy $backfold.tar.gpg.md5 gdrive:backups
echo "Checking remote integrity"
rclone check Backup.tar.gpg gdrive:backups/
