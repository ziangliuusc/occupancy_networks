ROOT=..

export MESHFUSION_PATH=$ROOT/external/mesh-fusion
export HDF5_USE_FILE_LOCKING=FALSE # Workaround for NFS mounts

INPUT_PATH=/home/ziang/Workspace/Github/VitruviaNet/data/dataset
CHOY2016_PATH=/home/ziang/Workspace/Github/VitruviaNet/data/dataset
BUILD_PATH=/home/ziang/Workspace/Github/VitruviaNet/data/dataset.build
OUTPUT_PATH=/home/ziang/Workspace/Github/VitruviaNet/data/dataset_output

NPROC=12
TIMEOUT=180
N_VAL=100
N_TEST=100
N_AUG=50

declare -a CLASSES=(
LOD2
LOD3
LOD4
)

# Utility functions
lsfilter() {
 folder=$1
 other_folder=$2
 ext=$3

 for f in $folder/*; do
   filename=$(basename $f)
   if [ ! -f $other_folder/$filename$ext ] && [ ! -d $other_folder/$filename$ext ]; then
    echo $filename
   fi
 done
}
