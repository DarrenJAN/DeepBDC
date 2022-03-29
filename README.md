# DeepBDC in Pytorch
<div>
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<img src="http://peihuali.org/pictures/BDC.JPG" width="80%"/>
</div>


## Introduction
We provide a PyTorch implementation of DeepBDC for few-shot learning:<br>
   [Joint Distribution Matters: Deep Brownian Distance Covariance for Few-Shot Classification.](www.baidu.com). <br>
If you use this code for your research, please cite our paper.<br>
```
@inproceedings{xie2022DeepBDC,
  title={Joint Distribution Matters: Deep Brownian Distance Covariance for Few-Shot Classification},
  author={Xie, Jiangtao and Long, Fei and Lv, Jiaming and Wang, Qilong and Li, Peihua}, 
  booktitle={CVPR},
  year={2022}
 }
```
## Few-shot classification Results
Experimental results on few-shot learning datasets with ResNet-12 backbone and ResNet-18 backbone. We report average results with 2,000 randomly sampled episodes for both 1-shot and  5-shot evaluation.



**MiniImageNet Dataset**
|  Method  |        ResNet-12            | ResNet-34 |  
|:--------:|:------------:|:------------:|
|  Method  | 1-Shot 5-Way | 5-Shot 5-Way |   
| ProtoNet |     64.12    |     80.51    |
| Good-Embed |     **66.50**    |     **82.41**    |
|  **Meta DeepBDC**  |     **67.83**    |     **83.14**    | 
| **STL  DeepBDC** |     **68.77**    |     **84.13**    | 

**TieredImageNet Dataset**

|  Setups  | 1-Shot 5-Way | 5-Shot 5-Way |   
|:--------:|:------------:|:------------:|
| Previous SOTA |     68.50    |     84.28    |
| **DeepEMD-FCN** |     **72.65**    |     **86.03**    |
|  **DeepEMD-Grid**  |     **73.13**    |     **87.08**    | 
| **DeepEMD-Sampling** |     **74.29**    |     **86.98**    | 

## Prerequisites
- Linux
- Python 3.5
- Pytorch 1.3
- GPU + CUDA CuDNN
- pillow, torchvision, scipy, numpy

## Implementation details
### Installation

- Clone this repo:
```bash
git clone https://github.com/longfei-png/DeepBDC.git
cd DeepBDC
```
### Datasets
- [miniImageNet](https://drive.google.com/file/d/1fUBrpv8iutYwdL4xE1rX_R9ef6tyncX9/view). 
- [tieredImageNet](https://www.dropbox.com/sh/6yd1ygtyc3yd981/AABVeEqzC08YQv4UZk7lNHvya?dl=0).<br> 
  Note that all the images need to be stored into a file named "images", and the data splits are stored into "train.csv", "val.csv" and "test.csv", respectively.
 ## Train and Test
### **Meta DeepBDC**
#### Pretraining
```
python train_pretrain.py --dataset [DATASET_NAME] --data_path [DATA_PATH] --model [BACKBONE_NAME] --method [METHOD_NAME] --image_size [IMAGE_SIZE] --reduce_dim [REDUCE_DIM] --[OTHER_OPTISIONS]
```

For example, run
```
python train_pretrain.py --dataset miniImagenet --data_path /data/miniImagenet --model ResNet12 --method meta_bdc --image_size 84 --reduce_dim 640 --train_aug --gpu 0
```
#### Meta training
```
python train_meta.py --dataset [DATASET_NAME] --data_path [DATA_PATH] --model [BACKBONE_NAME] --method [METHOD_NAME] --image_size [IMAGE_SIZE] --reduce_dim [REDUCE_DIM] --n_shot [N_SHOT] --pretrain_path [PRETRAIN_MODEL_PATH]
```

For example, run
```
python train_meta.py --dataset miniImagenet --data_path /data/miniImagenet --model ResNet12 --method meta_bdc --image_size 84 --reduce_dim 640 --train_aug --gpu 0 --n_shot 1 --pretrain_path /pretrain_pth_save_path
```

#### Meta testing
```
python test_finetuning.py --dataset [DATASET_NAME] --data_path [DATA_PATH] --model [BACKBONE_NAME] --method [METHOD_NAME] --image_size [IMAGE_SIZE] --reduce_dim [REDUCE_DIM] --n_shot [N_SHOT] --model_path [MODEL_PATH]
```

For example, run
```
python test_finetuning.py --dataset miniImagenet --data_path /data/miniImagenet --model ResNet12 --method meta_bdc --image_size 84 --reduce_dim 640 --train_aug --gpu 0 --n_shot 1 --model_path /model_pth_save_path
```

### **STL DeepBDC**
#### Pretraining
```
python train_pretrain.py --dataset [DATASET_NAME] --data_path [DATA_PATH] --model [BACKBONE_NAME] --method [METHOD_NAME] --image_size [IMAGE_SIZE] --reduce_dim [REDUCE_DIM] --[OTHER_OPTISIONS]
```

For example, run
```
python train_pretrain.py --dataset miniImagenet --data_path /data/miniImagenet --model ResNet12 --method stl_bdc --image_size 84 --reduce_dim 128 --train_aug --gpu 0
```
#### Self distillation
```
python train_distillation.py --dataset [DATASET_NAME] --data_path [DATA_PATH] --model [BACKBONE_NAME] --method [METHOD_NAME] --image_size [IMAGE_SIZE] --reduce_dim [REDUCE_DIM] --teacher_path [TEACHER_MODEL_PATH]
```

For example, run
```
python train_meta.py --dataset miniImagenet --data_path /data/miniImagenet --model ResNet12 --method stl_bdc --image_size 84 --reduce_dim 128 --train_aug --gpu 0 --teacher_path /teacher_pth_save_path
```

#### Meta testing
```
python test_finetuning.py --dataset [DATASET_NAME] --data_path [DATA_PATH] --model [BACKBONE_NAME] --method [METHOD_NAME] --image_size [IMAGE_SIZE] --reduce_dim [REDUCE_DIM] --n_shot [N_SHOT] --model_path [MODEL_PATH]
```

For example, run
```
python test_finetuning.py --dataset miniImagenet --data_path /data/miniImagenet --model ResNet12 --method stl_bdc --image_size 84 --reduce_dim 128 --train_aug --gpu 0 --n_shot 1 --model_path /model_pth_save_path
```


