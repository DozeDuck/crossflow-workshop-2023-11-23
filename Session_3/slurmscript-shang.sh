#!/bin/bash --login

#SBATCH -J grompp_mdrun
#SBATCH -A abnffidp
#SBATCH --cpus-per-task=4
#SBATCH -t 00:15:00
#SBATCH --nodes=1
#SBATCH --tasks-per-node=1
module load GROMACS/2020.5-foss-2020b-Python-3.8.6
export OMP_NUM_THREADS=1

gmx grompp -f nvt.mdp -c 1ake_em.gro -p 1ake.top -o 1ake_nvt.tpr -maxwarn 1
srun --distribution=block:block --hint=nomultithread gmx_mpi mdrun -deffnm 1ake_nvt
echo 0 | gmx trjconv -f 1ake_nvt.trr -s 1ake_nvt.tpr -o 1ake_nvt_whole.trr -pbc whole
