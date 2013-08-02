===============================================================
Testing Heat AutoScaling with different monitoring and alarming
===============================================================

Old school: Current Heat templates
==================================
Alarmer: cw lite
monitoring: cfn-push-stats
resource under test: cloud_watch.py
directory: AWS_CW_cfn_push_stats_with_watch

Old school: Current Heat templates (no --watch)
===============================================
Alarmer: cw lite
monitoring: cfn-push-stats
resource implementation: cloud_watch.py
directory: AWS_CW_cfn_push_stats

New school: Ceilometer
======================
Alarmer: Ceilometer
monitoring: Ceilometer infrastructure
resource implementation: ceilometer/alarm.py
directory: Ceilometer

Mixed: Ceilometer + cfn-push-stats
==================================
Alarmer: Ceilometer
monitoring: cfn-push-stats
resource implementation: ceilometer/alarm.py
directory: Ceilometer_cfn_push_stats

New CW Template Resource
========================
Alarmer: Ceilometer
monitoring: Ceilometer infrastructure
resource implementation: TemplateResource(AWS_CloudWatch_Alarm.yaml)
directory: AWS_CW

CW Template Resource + cfn-push-stats
=====================================
Alarmer: Ceilometer
monitoring: cfn-push-stats
directory: AWS_CW_cfn_push_stats
resource implementation: TemplateResource(AWS_CloudWatch_Alarm.yaml)
