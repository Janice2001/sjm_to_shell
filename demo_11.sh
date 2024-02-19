sh /1/Dev/Demo/s1/clean.sh &
sh /1/Dev/Demo/s2/clean.sh &
wait
sh /2/Dev/Demo/s1/umitag_P.sh &
sh /2/Dev/Demo/s1/umitag_N.sh &
sh /2/Dev/Demo/s2/umitag_P.sh &
sh /2/Dev/Demo/s2/umitag_N.sh &
wait
sh /3/Dev/Demo/s1/consolidate_r1.sh &
sh /3/Dev/Demo/s1/consolidate_r2.sh &
sh /3/Dev/Demo/s2/consolidate_r1.sh &
sh /3/Dev/Demo/s2/consolidate_r2.sh &
wait
sh /4/Dev/Demo/s1/merge.sh &
sh /4/Dev/Demo/s2/merge.sh &
wait
sh /5/Dev/Demo/s1/align.sh &
sh /5/Dev/Demo/s2/align.sh &
wait
sh /6/Dev/Demo/identify_ex.sh &
sh /6/Dev/Demo/identify_cl.sh &
wait
sh /7/Dev/Demo/identify_cn.sh &
wait
sh /8/Dev/Demo/visualization.sh &
wait
