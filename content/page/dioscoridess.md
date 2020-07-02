---
subtitle: "DioscoriDESS Tool Resources"
tags: ["deeplearning", "python"]
---

# DioscoriDESS

---

{{< notice note >}}

- Make sure to replace `/data/knee_mri4/pferreira/4_analysis/dioscoridess/` with a location of your choice.

{{< /notice >}}

1. Make a directory where your input files (.yaml) and output files (.h5) will be stored:

    ```bash
    mkdir -p /data/knee_mri4/pferreira/4_analysis/dioscoridess/cfgs
    mkdir -p /data/knee_mri4/pferreira/4_analysis/dioscoridess/logs
    mkdir -p /data/knee_mri4/pferreira/4_analysis/dioscoridess/ckpt

    ```

2. Create your yaml file and save in `/data/knee_mri4/pferreira/4_analysis/dioscoridess/cfgs/my_input.yaml`:

    ```yaml
    # Sample ./yaml config file
    common:
    seed: 1234
    vis_GPU: '1' #single GPU compatibility
    log_path: './experiments/training/logs/'
    save_path: './experiments/training/ckpt/'
    print_freq: 25

    data_train:
    data_root: '/data/bigbone5/JacobOeding/DL_code/splits/axial_train.csv'
    batch_size: 4
    im_dims: !!python/tuple [512, 512]
    crop : !!python/tuple [0, 0, 0, 0]
    num_classes: 3
    idx_classes : [0,1,2]
    num_channels: 1
    normalization_file: '/data/bigbone5/JacobOeding/DL_code/dataInfo/Axial_MinMaxDataset.csv'

    data_val:
    data_root : '/data/bigbone5/JacobOeding/DL_code/splits/axial_val_onlySegmentedSlices.csv'
    batch_size: 4
    im_dims: !!python/tuple [512, 512]
    crop : !!python/tuple [0, 0, 0, 0]
    num_classes: 3
    idx_classes : [0,1,2]
    num_channels: 1
    normalization_file: '/data/bigbone5/JacobOeding/DL_code/dataInfo/Axial_MinMaxDataset.csv'
    evaluate_mode: True

    dataLoader_folder: 'dataLoader'
    learn:
    max_steps: 500000 # instead of epochs
    lr : 0.00005
    optimizer: 'adam'
    loss: 'dice_loss_softmax'
    metrics: 'dice_score'
    weights: [1,1.2,1]
    num_classes: 3
    dataloader: 'data_loader'
    comp: ['femur', 'tibia', 'background']
    key_slice: !!python/tuple [0, 0, 0]
    patience: 15 # in number of validation runs
    keep_prob : 0.95
    val_freq : 75 # in steps

    model_folder: VNet
    model: 'VNet'
    model_params:
    # github.com/MiguelMonteiro/VNet-Tensorflow
    num_classes: 3
    num_channels : 32
    num_levels : 5
    num_convolutions : !!python/tuple [1, 1, 1, 1, 1]
    bottom_convolutions : 2

    pretrain:
    flag: False
    ckpt: ''
    ```

3. Activate the python environment:

    ```bash
    bash
    export PATH=/netopt/rhel7/versions/python/Anaconda3-5.2.0/bin:/bin:$PATH
    source activate /netopt/share/bin/local/bone/conda_envs/envs/dioscoridess_tf-1.12_py-3.6
    ```

4. Run DioscoriDESS:

    ```bash
    cd /data/i2/software/dioscoridess
    python main.py --cfg /data/knee_mri4/pferreira/4_analysis/dioscoridess/cfgs/my_input.yaml --desc test
    ```

---

{{< notice note >}}

- Your files will be saved at the location you choose in the yaml file (`log path` and `save path` variables)

{{< /notice >}}
