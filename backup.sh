#!/bin/bash
BACKUP_SRC="/home/vanshu/Desktop/projects"
BACKUP_DEST="/home/vanshu/Desktop/script"
DATE=$(date +%Y%m%d_%H%M%S)
tar -czf $BACKUP_DEST/backup-$DATE.tar.gz $BACKUP_SRC
echo "Backup created successfully at $BACKUP_DEST/backup-$DATE.tar.gz"
