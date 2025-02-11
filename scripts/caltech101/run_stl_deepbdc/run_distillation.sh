gpuid=0

DATA_ROOT=/content # path to the json file of CUB
MODEL_PATH=/content/DeepBDC/checkpoints/cub/ResNet18_stl_deepbdc_pretrain/last_model.tar
cd /content/DeepBDC

echo "============= distill born 1 ============="
python distillation.py --dataset cub --data_path $DATA_ROOT --model ResNet18 --method stl_deepbdc --image_size 224 --gpu ${gpuid} --lr 5e-3 --t_lr 1e-4 --epoch 50 --milestones 120 170 --save_freq 100 --reduce_dim 128 --teacher_path $MODEL_PATH --trial 1 --dropout_rate 0.5 --val last

for i in {2..2}
do
let j=$i-1
echo "=====born $i last born $j ====="
python distillation.py --dataset cub --data_path $DATA_ROOT --model ResNet18 --method stl_deepbdc --image_size 224 --gpu ${gpuid} --lr 5e-3 --t_lr 1e-4 --epoch 50 --milestones 120 170 --save_freq 100 --reduce_dim 128 --teacher_path ./checkpoints/cub/ResNet18_stl_deepbdc_distill_born$j/last_model.tar --trial $i --dropout_rate 0.5 --val last
done