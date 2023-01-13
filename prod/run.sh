NAMD=/opt/apps/namd3/namd3

# rm -rf !(run.sh|MD.conf|files)
$NAMD +p 52 +setcpuaffinity  MD.conf &> md.out
#$NAMD +p 52 +setcpuaffinity +devices 0 MD.conf &> md.out
#$NAMD +p 52 +setcpuaffinity --CUDASOAintegrate on +devices 0 MD.conf &> md.out
