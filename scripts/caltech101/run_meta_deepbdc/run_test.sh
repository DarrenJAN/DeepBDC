gpuid=0
N_SHOT=1

DATA_ROOT=/content # path to the json file of CUB
MODEL_PATH=/content/DeepBDC/checkpoints/cub/ResNet18_meta_deepbdc_5way_${N_SHOT}shot_metatrain/best_model.tar
cd /content/DeepBDC

python test.py --dataset cub --data_path $DATA_ROOT --model ResNet18 --method meta_deepbdc --image_size 224 --gpu ${gpuid} --n_shot $N_SHOT --reduce_dim 256 --model_path $MODEL_PATH --test_task_nums 5

N_SHOT=5
python test.py --dataset cub --data_path $DATA_ROOT --model ResNet18 --method meta_deepbdc --image_size 224 --gpu ${gpuid} --n_shot $N_SHOT --reduce_dim 256 --model_path $MODEL_PATH --test_task_nums 5
