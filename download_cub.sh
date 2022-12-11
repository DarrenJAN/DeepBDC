git clone  https://github.com/wyharveychen/CloserLookFewShot.git
# at download_CUB.sh at line2, change to 
# https://data.caltech.edu/records/65de6-vp158/files/CUB_200_2011.tgz

source /content/CloserLookFewShot/filelists/CUB/download_CUB.sh
python /content/CloserLookFewShot/filelists/CUB/write_CUB_filelist.py
chmod +x /content/DeepBDC/scripts/cub/run_protonet/run_test.sh
bash /content/DeepBDC/scripts/cub/run_protonet/run_test.sh