gpuid=0

DATA_ROOT=/content/DeepBDC # path to the json file of CUB
cd /content

echo "============= pre-train ============="
python pretrain.py --dataset caltech101 --data_path $DATA_ROOT --model ResNet18 --method good_embed --image_size 224 --gpu ${gpuid} --lr 5e-2 --epoch 220 --milestones 120 170 --save_freq 100 --val last