# DeepBDC for few-shot learning
<div>
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<img src="http://peihuali.org/DeepBDC/illustration.gif" width="80%"/>
</div>


## Introduction
In this repo, we provide the implementation of the following paper:<br>
"Joint Distribution Matters: Deep Brownian Distance Covariance for Few-Shot Classification"   [[Project]](http://peihuali.org/DeepBDC/index.html) [[Paper]](https://arxiv.org/pdf/2204.04567.pdf).

 In this paper, we propose deep Brownian Distance Covariance (DeepBDC) for few-shot classification. DeepBDC can effectively learn image representations by measuring, for the query and support images, the discrepancy between the joint distribution of their embedded features and product of the marginals. The core of DeepBDC is formulated as a modular and efficient layer, which can be flexibly inserted into deep networks, suitable not only for meta-learning framework based on episodic training, but also for the simple transfer learning (STL) framework of pretraining plus linear classifier.<br>


## Few-shot classification Results
Experimental results on miniImageNet and CUB. We report average results with 2,000 randomly sampled episodes for both 1-shot and  5-shot evaluation. More details on the experiments can be seen in the paper.
### miniImageNet
<table>
         <tr>
             <th rowspan="2" style="text-align:center;">Method</th>
             <th colspan="2" style="text-align:center;">ResNet-12</th>
             <th colspan="2" style="text-align:center;">Pre-trained models</th>
             <th colspan="2" style="text-align:center;">Meta-trained models</th>
         </tr>
         <tr>
             <th colspan="1" style="text-align:center;">5-way-1-shot</th>
             <th colspan="1" style="text-align:center;">5-way-5-shot</th>
             <th colspan="1" style="text-align:center;">GoogleDrive</th>
             <th colspan="1" style="text-align:center;">BaiduCloud</th>
             <th colspan="1" style="text-align:center;">GoogleDrive</th>
             <th colspan="1" style="text-align:center;">BaiduCloud</th>
         </tr>
         <tr>
             <td style="text-align:center">ProtoNet</td>
             <td style="text-align:center;">62.11±0.44</td>
             <td style="text-align:center;">80.77±0.30</td>
             <td style="text-align:center;"><a href="https://drive.google.com/drive/folders/1ngzuWjB4btPzGqIX_dr24iUwa0fDWk6p?usp=sharing">Download</a></td>
             <td style="text-align:center;"><a href="https://pan.baidu.com/s/1eQJnkxkH0HgB1cBiU4kjuA?pwd=an94">Download</a></td>
             <td style="text-align:center;"><a href="https://drive.google.com/drive/folders/1GaBoQh4i9kF13jEXRwORmpXTpsDlcVOE?usp=sharing">Download</a></td>
             <td style="text-align:center;"><a href="https://pan.baidu.com/s/16EV3jsOsEnTdl3DYtLCaMw?pwd=sw8j">Download</a></td>
         </tr>
         <tr>
             <td style="text-align:center">Good-Embed</td>
             <td style="text-align:center;">64.98±0.44</td>
             <td style="text-align:center;">82.10±0.30</td>
             <td style="text-align:center;"><a href="https://drive.google.com/drive/folders/1C2uIs1t_QJBcol2TKjlwTPAr78IfRZRn?usp=sharing">Download</a></td>
             <td style="text-align:center;"><a href="https://pan.baidu.com/s/1z_YCzvhHMLzGPVkxWGqWoA?pwd=8cyz">Download</a></td>
             <td colspan="2" style="text-align:center;">N/A</td>
         </tr>
         <tr>
             <td style="text-align:center">Meta DeepBDC</td>
             <td style="text-align:center;">67.34±0.43</td>
             <td style="text-align:center;">84.46±0.28</td>
             <td style="text-align:center;"><a href="https://drive.google.com/drive/folders/10Ej_xZeO_M-aMQkKpYcawAQ0BKV3b8SU?usp=sharing">Download</a></td>
             <td style="text-align:center;"><a href="https://pan.baidu.com/s/1encoBx8lJrRTkptBc4O3XQ?pwd=3ee0">Download</a></td>
             <td style="text-align:center;"><a href="https://drive.google.com/drive/folders/14_2dqvGSPeQ9sqLjXWpi58YVwfWqufMq?usp=sharing">Download</a></td>
             <td style="text-align:center;"><a href="https://pan.baidu.com/s/1vuh08yt02CX2TXnV332frA?pwd=abzh">Download</a></td>
         </tr>
         <tr>
             <td style="text-align:center">STL DeepBDC</td>
             <td style="text-align:center;">67.83±0.43</td>
             <td style="text-align:center;">85.45±0.29</td>
             <td style="text-align:center;"><a href="https://drive.google.com/drive/folders/1mxacPRdvNayZDrhyprrgOWwyRXRdhdu1?usp=sharing">Download</a></td>
             <td style="text-align:center;"><a href="https://pan.baidu.com/s/10Ft7xvbQQCII3OsL0jFkyw?pwd=ls0a">Download</a></td>
             <td colspan="2" style="text-align:center;">N/A</td>
         </tr>
</table>

*Note that for Good-Embed and STL DeepBDC, a sequential self-distillation technique is used to obtain the pre-trained models; See the paper of Good-Embed for details.*

### CUB
<table>
         <tr>
             <th rowspan="2" style="text-align:center;">Method</th>
             <th colspan="2" style="text-align:center;">ResNet-18</th>
             <th colspan="2" style="text-align:center;">Pre-trained models</th>
             <th colspan="2" style="text-align:center;">Meta-trained models</th>
         </tr>
         <tr>
             <th colspan="1" style="text-align:center;">5-way-1-shot</th>
             <th colspan="1" style="text-align:center;">5-way-5-shot</th>
             <th colspan="1" style="text-align:center;">GoogleDrive</th>
             <th colspan="1" style="text-align:center;">BaiduCloud</th>
             <th colspan="1" style="text-align:center;">GoogleDrive</th>
             <th colspan="1" style="text-align:center;">BaiduCloud</th>
         </tr>
         <tr>
             <td style="text-align:center">ProtoNet</td>
             <td style="text-align:center;">80.90±0.43</td>
             <td style="text-align:center;">89.81±0.23</td>
             <td style="text-align:center;"><a href="https://drive.google.com/file/d/1rpNH9iAI10KEGacLn55gY3PYoBFDg94W/view?usp=sharing">Download</a></td>
             <td style="text-align:center;"><a href="https://pan.baidu.com/s/1CMfyUtpkkTTDF4kT5lJ7Hw?pwd=1din">Download</a></td>
             <td style="text-align:center;"><a href="https://drive.google.com/drive/folders/1xPYoVtv0sPa1QY2eq9bmJNGOhqRSMHGD?usp=sharing">Download</a></td>
             <td style="text-align:center;"><a href="https://pan.baidu.com/s/19Y8IaoWNHGgYcjrLd9Mvsw?pwd=cl0t">Download</a></td>
         </tr>
         <tr>
             <td style="text-align:center">Good-Embed</td>
             <td style="text-align:center;">77.92±0.46</td>
             <td style="text-align:center;">89.94±0.26</td>
             <td style="text-align:center;"><a href="https://drive.google.com/file/d/15Cd-bodJUQHH7rB3x4JohA723lN9CuDq/view?usp=sharing">Download</a></td>
             <td style="text-align:center;"><a href="https://pan.baidu.com/s/1y85JKAaQaEE8sPTQ6RNqEw?pwd=00qf">Download</a></td>
             <td colspan="2" style="text-align:center;">N/A</td>
         </tr>
         <tr>
             <td style="text-align:center">Meta DeepBDC</td>
             <td style="text-align:center;">83.55±0.40</td>
             <td style="text-align:center;">93.82±0.17</td>
             <td style="text-align:center;"><a href="https://drive.google.com/file/d/15rXrL2DLw0d5nO2CfGOLNbqYaKLcasAG/view?usp=sharing">Download</a></td>
             <td style="text-align:center;"><a href="https://pan.baidu.com/s/1FKRt65qaM2JlTBfsG9l64w?pwd=e3cw">Download</a></td>
             <td style="text-align:center;"><a href="https://drive.google.com/drive/folders/1jnK0O4BNfrZnZl9CG3nFeJfJZHJdqVeH?usp=sharing">Download</a></td>
             <td style="text-align:center;"><a href="https://pan.baidu.com/s/1yoqXwsqU4T2DK-MgJ_z1JQ?pwd=xro5">Download</a></td>
         </tr>
         <tr>
             <td style="text-align:center">STL DeepBDC</td>
             <td style="text-align:center;">84.01±0.42</td>
             <td style="text-align:center;">94.02±0.24</td>
             <td style="text-align:center;"><a href="https://drive.google.com/file/d/1ZN6DXGPREHNIQJSGeLdfQUWJb90Grjck/view?usp=sharing">Download</a></td>
             <td style="text-align:center;"><a href="https://pan.baidu.com/s/15dXPW3pcs2BaaC0fBtgrTA?pwd=18nw">Download</a></td>
             <td colspan="2" style="text-align:center;">N/A</td>
         </tr>
</table>

*Note that for Good-Embed and STL DeepBDC, a sequential self-distillation technique is used to obtain the pre-trained models; See the paper of Good-Embed for details.*



## Implementation details
### Datasets
- miniImageNet: We use the splits provided by [Chen et al.](https://github.com/wyharveychen/CloserLookFewShot)
- CUB: We use the splits provided by [Chen et al.](https://github.com/wyharveychen/CloserLookFewShot)
- tieredImageNet
- Aircraft
- Cars


### Installation

- Clone this repo:
```bash
git clone https://github.com/Fei-Long121/DeepBDC.git
cd DeepBDC
```
### **For Meta DeepBDC on general object recognition**
1. `cd scripts/mini_magenet/run_meta_deepbdc`
2.  modify the dataset path in `run_pretrain.sh`, `run_metatrain.sh` and `run_test.sh`
3. `bash run.sh`


### **For STL DeepBDC on general object recognition**
1. `cd scripts/mini_imagenet/run_stl_deepbdc`
2.  modify the dataset path in `run_pretrain.sh`, `run_distillation.sh` and `run_test.sh`
3. `bash run.sh`
