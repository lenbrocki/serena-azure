#!/bin/bash
docker run --runtime nvidia --gpus all \
    -v /home/lbrocki90_gmail_com/.cache/huggingface:/root/.cache/huggingface \
    --env "HUGGING_FACE_HUB_TOKEN=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" \
    -p 80:8000 \
    --ipc=host \
    vllm/vllm-openai:latest \
    --model lenbrocki/Solar_DPO_expert-paper-178_awq \
    --served-model-name "serena" \
    --quantization awq \
    --disable-log-requests \
    --gpu-memory-utilization 0.85 \
    --api-key 082eb330-ab42-4118-bd30-4732c2acf887
