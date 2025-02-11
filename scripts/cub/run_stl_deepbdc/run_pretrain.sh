gpuid=0

DATA_ROOT=/content # path to the json file of CUB
cd /content/DeepBDC

echo "============= pre-train ============="
python pretrain.py --dataset cub --data_path $DATA_ROOT --model ResNet18 --method stl_deepbdc --image_size 224 --gpu ${gpuid} --lr 5e-3 --t_lr 1e-4 --epoch 50 --milestones 120 170 --save_freq 100 --reduce_dim 128 --dropout_rate 0.5 --val last