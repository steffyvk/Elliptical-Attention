#!/bin/bash

CUDA_VISIBLE_DEVICES=0,1,2,3 python -m torch.distributed.launch --nproc_per_node=4 --master_port=1501 --use_env main.py --model deit_robust_tiny_patch16_224 --huber_a 0.1 --batch-size 256 --data-path /mnt/d64c1162-08cc-4571-90a3-04c60b6f6f66/xing/imagenet/imagenet --output_dir /home/xing/robust_transformer/imagenet/files_robust_0.1 --use_wandb 1 --project_name 'robust' --job_name imagenet_deit_robust_0.1

CUDA_VISIBLE_DEVICES=0,1,2,3 python -m torch.distributed.launch --nproc_per_node=4 --master_port=1502 --use_env main.py --model deit_robust_tiny_patch16_224 --huber_a 0.4 --batch-size 256 --data-path /mnt/d64c1162-08cc-4571-90a3-04c60b6f6f66/xing/imagenet/imagenet --output_dir /home/xing/robust_transformer/imagenet/files_robust_0.4 --use_wandb 1 --project_name 'robust' --job_name imagenet_deit_robust_0.4

CUDA_VISIBLE_DEVICES=0,1,2,3 python -m torch.distributed.launch --nproc_per_node=4 --master_port=1503 --use_env main.py --model deit_robust_tiny_patch16_224 --huber_a 0.6 --batch-size 256 --data-path /mnt/d64c1162-08cc-4571-90a3-04c60b6f6f66/xing/imagenet/imagenet --output_dir /home/xing/robust_transformer/imagenet/files_robust_0.6 --use_wandb 1 --project_name 'robust' --job_name imagenet_deit_robust_0.6

CUDA_VISIBLE_DEVICES=0,1,2,3 python -m torch.distributed.launch --nproc_per_node=4 --master_port=1504 --use_env main.py --model deit_robust_tiny_patch16_224 --huber_a 1.0 --batch-size 256 --data-path /mnt/d64c1162-08cc-4571-90a3-04c60b6f6f66/xing/imagenet/imagenet --output_dir /home/xing/robust_transformer/imagenet/files_robust_1.0 --use_wandb 1 --project_name 'robust' --job_name imagenet_deit_robust_1.0