#/usr/bin/bash


all="AWS_CW AWS_CW_cfn_push_stats AWS_CW_cfn_push_stats_with_watch Ceilometer Ceilometer_cfn_push_stats"
working="AWS_CW "
for t in $working
do
    now=$(python py_time.py)
    heat stack-create $t -P "StackStart=$now" -e $t/env.yaml -f $t/template.yaml
    echo heat event-list $t
done
