 NAMD=/opt/apps/namd3/namd3
 
 # rm -rf !(run.sh|MD.conf|files|ns_per_day.py)
 $NAMD +p 52 +setcpuaffinity  MD.conf &> md.out
 #$NAMD +p 52 +setcpuaffinity +devices 0 MD.conf &> md.out
 #$NAMD +p 52 +setcpuaffinity --CUDASOAintegrate on +devices 0 MD.conf &> md.  out
 
 
 # watch python3 ns_per_day.py md.out
