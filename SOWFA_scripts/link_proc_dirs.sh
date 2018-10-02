#! /bin/bash
# run_dir=/projects/windsim/mlawson/wake_steering/stableABLRuns/24HrPer_0.001m_5m
# run_dir=/projects/windsim/mlawson/wake_steering/stableABLRuns/24HrPer_0.15m_5m
# run_dir=/projects/windsim/mlawson/wake_steering/stableABLRuns/48HrPer_0.001m_5m
# run_dir=/projects/windsim/mlawson/wake_steering/stableABLRuns/48HrPer_0.15m_5m
# run_dir=/projects/windsim/mlawson/wake_steering/stableABLRuns/infPer_0.001m_5m
run_dir=/projects/windsim/mlawson/wake_steering/stableABLRuns/infPer_0.15m_5m


mesh_dir=/projects/windsim/mlawson/wake_steering/stableABLRuns/mesh_3000x2000x750_5m_720c

start=0
stop=719

for ((i=start; i<=stop; i++))
do
    echo $i
    rm -rf $run_dir/processor$i/constant
    cp -rs $mesh_dir/processor$i/constant $run_dir/processor$i/

    rm -rf $run_dir/processor$i/0
    cp -rs $mesh_dir/processor$i/0 $run_dir/processor$i/

done
