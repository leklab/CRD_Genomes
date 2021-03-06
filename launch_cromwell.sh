#!/bin/bash
#SBATCH -n 1
#SBATCH -c 4
#SBATCH -J launch_cromwell
#SBATCH --mem=32000

java -Xmx200g -Dconfig.file=wdl/slurm.conf -jar \
/gpfs/ycga/project/lek/shared/tools/jars/cromwell-56.jar run \
wdl/Multisample_Fastq_to_Bam_GATK4.wdl \
-i wdl/Multisample_Fastq_to_Bam_GATK4_inputs_hg38.json \
-o wdl/cromwell.options
