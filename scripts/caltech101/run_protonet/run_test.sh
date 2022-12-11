gpuid=0
N_SHOT=1

DATA_ROOT=/content # path to the json file of CUB
MODEL_PATH=/content/DeepBDC/checkpoints/cub/ResNet18_protonet_5way_${N_SHOT}shot_metatrain/best_model.tar
cd /content/DeepBDC

python test.py --dataset cub --data_path $DATA_ROOT --model ResNet18 --method protonet --image_size 224 --gpu ${gpuid} --n_shot $N_SHOT --model_path $MODEL_PATH --test_task_nums 5