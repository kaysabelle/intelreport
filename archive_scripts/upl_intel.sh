#!/bin/bash
echo "getting intel excel file..."
sh ~/shell_scripts/get_intel.sh
echo "got intel file!"
echo "uploading to Dropbox/_data/Intel_Archive"
FILENAME=adminreport.`date +"%Y%m%d"`.xlsx
cd ~/intel_archive
bash ~/shell_scripts/dropbox_uploader.sh upload $FILENAME _data/Intel_Archive
echo "successfully uploaded! $FILENAME"
