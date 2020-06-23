#CUDA_VISIBLE_DEVICES=0,1,2,3 nohup python -u train.py  > logdir/a0.log  2>&1 &
CUDA_VISIBLE_DEVICES=0,1 nohup python -u train.py --model resnet18 > logdir/a1.log  2>&1 &
CUDA_VISIBLE_DEVICES=2,3 nohup python -u train.py --model resnet34 > logdir/a2.log  2>&1 &

tail -f logdir/a2.log