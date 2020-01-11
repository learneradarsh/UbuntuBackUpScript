#!/bin/bash -x

# backup src destination


read -p "Enter directory location to take backup:" $SRC
echo $SRC
read -p "Enter destination location where you want to save backup:" $DES
echo $DES
#create destination folder
DATE=$(date +%Y-%m-%d_%H_%M_%S)
sudo mkdir -p $DES/$DATE

#copy files from source to destination
sudo cp -r $SRC  $DES/$DATE

#test exit status
if (( $?==0 ))
then
	echo "Backup Successfully Completed"
else
	echo "Backup Failed"
fi

