
H
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-347
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-349
g
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22
G
Running DRC with %s threads
24*drc2
42default:defaultZ23-27
M
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198
\
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199
M

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103
p
BMultithreading enabled for route_design using a maximum of %s CPUs97*route2
42default:defaultZ35-254
K

Starting %s Task
103*constraints2
Route2default:defaultZ18-103
g

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101
9
-Phase 1 Build RT Design | Checksum: f343034c
*common
�

%s
*constraints2q
]Time (s): cpu = 00:00:21 ; elapsed = 00:00:16 . Memory (MB): peak = 1826.793 ; gain = 104.0082default:default
m

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101
f

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101
8
,Phase 2.1 Create Timer | Checksum: f343034c
*common
�

%s
*constraints2q
]Time (s): cpu = 00:00:21 ; elapsed = 00:00:16 . Memory (MB): peak = 1829.324 ; gain = 106.5392default:default
g

Phase %s%s
101*constraints2
2.2 2default:default2!

9
-Phase 2.2 Update Timing | Checksum: 352ca29b
*common
�

%s
*constraints2q
]Time (s): cpu = 00:00:31 ; elapsed = 00:00:21 . Memory (MB): peak = 1871.934 ; gain = 149.1482default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=0.771  | TNS=0      | WHS=-0.356 | THS=-495   |
2default:defaultZ35-57
?
3Phase 2 Router Initialization | Checksum: 352ca29b
*common
�

%s
*constraints2q
]Time (s): cpu = 00:00:36 ; elapsed = 00:00:24 . Memory (MB): peak = 1871.934 ; gain = 149.1482default:default
g

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101
:
.Phase 3 Initial Routing | Checksum: 1d58d3996
*common
�

%s
*constraints2q
]Time (s): cpu = 00:00:40 ; elapsed = 00:00:25 . Memory (MB): peak = 1871.934 ; gain = 149.1482default:default
j

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101
l

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101
i

Phase %s%s
101*constraints2
4.1.1 2default:default2!

<
0Phase 4.1.1 Update Timing | Checksum: 1b13291b0
*common
�

%s
*constraints2q
]Time (s): cpu = 00:00:55 ; elapsed = 00:00:32 . Memory (MB): peak = 1871.934 ; gain = 149.1482default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=0.47   | TNS=0      | WHS=N/A    | THS=N/A    |
2default:defaultZ35-57
>
2Phase 4.1 Global Iteration 0 | Checksum: d33ab5fd
*common
�

%s
*constraints2q
]Time (s): cpu = 00:00:55 ; elapsed = 00:00:32 . Memory (MB): peak = 1871.934 ; gain = 149.1482default:default
l

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101
i

Phase %s%s
101*constraints2
4.2.1 2default:default2!

<
0Phase 4.2.1 Update Timing | Checksum: 11c84c853
*common
�

%s
*constraints2q
]Time (s): cpu = 00:00:56 ; elapsed = 00:00:33 . Memory (MB): peak = 1871.934 ; gain = 149.1482default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=0.47   | TNS=0      | WHS=N/A    | THS=N/A    |
2default:defaultZ35-57
?
3Phase 4.2 Global Iteration 1 | Checksum: 11c84c853
*common
�

%s
*constraints2q
]Time (s): cpu = 00:00:56 ; elapsed = 00:00:33 . Memory (MB): peak = 1871.934 ; gain = 149.1482default:default
=
1Phase 4 Rip-up And Reroute | Checksum: 11c84c853
*common
�

%s
*constraints2q
]Time (s): cpu = 00:00:56 ; elapsed = 00:00:33 . Memory (MB): peak = 1871.934 ; gain = 149.1482default:default
e

Phase %s%s
101*constraints2
5 2default:default2!

g

Phase %s%s
101*constraints2
5.1 2default:default2!

:
.Phase 5.1 Update Timing | Checksum: 11c84c853
*common
�

%s
*constraints2q
]Time (s): cpu = 00:00:58 ; elapsed = 00:00:34 . Memory (MB): peak = 1871.934 ; gain = 149.1482default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=0.486  | TNS=0      | WHS=N/A    | THS=N/A    |
2default:defaultZ35-57
8
,Phase 5 Delay CleanUp | Checksum: 11c84c853
*common
�

%s
*constraints2q
]Time (s): cpu = 00:00:58 ; elapsed = 00:00:34 . Memory (MB): peak = 1871.934 ; gain = 149.1482default:default
o

Phase %s%s
101*constraints2
6 2default:default2+
Clock Skew Optimization2default:defaultZ18-101
B
6Phase 6 Clock Skew Optimization | Checksum: 11c84c853
*common
�

%s
*constraints2q
]Time (s): cpu = 00:00:58 ; elapsed = 00:00:34 . Memory (MB): peak = 1871.934 ; gain = 149.1482default:default
e

Phase %s%s
101*constraints2
7 2default:default2!

g

Phase %s%s
101*constraints2
7.1 2default:default2!

:
.Phase 7.1 Update Timing | Checksum: 11c84c853
*common
�

%s
*constraints2q
]Time (s): cpu = 00:01:00 ; elapsed = 00:00:35 . Memory (MB): peak = 1871.934 ; gain = 149.1482default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=0.486  | TNS=0      | WHS=0.011  | THS=0      |
2default:defaultZ35-57
8
,Phase 7 Post Hold Fix | Checksum: 11c84c853
*common
�

%s
*constraints2q
]Time (s): cpu = 00:01:00 ; elapsed = 00:00:35 . Memory (MB): peak = 1871.934 ; gain = 149.1482default:default
f

Phase %s%s
101*constraints2
8 2default:default2"
Route finalize2default:defaultZ18-101
9
-Phase 8 Route finalize | Checksum: 11c84c853
*common
�

%s
*constraints2q
]Time (s): cpu = 00:01:01 ; elapsed = 00:00:35 . Memory (MB): peak = 1871.934 ; gain = 149.1482default:default
m

Phase %s%s
101*constraints2
9 2default:default2)
Verifying routed nets2default:defaultZ18-101
@
4Phase 9 Verifying routed nets | Checksum: 11c84c853
*common
�

%s
*constraints2q
]Time (s): cpu = 00:01:01 ; elapsed = 00:00:35 . Memory (MB): peak = 1871.934 ; gain = 149.1482default:default
j

Phase %s%s
101*constraints2
10 2default:default2%
Depositing Routes2default:defaultZ18-101
<
0Phase 10 Depositing Routes | Checksum: d01586f6
*common
�

%s
*constraints2q
]Time (s): cpu = 00:01:02 ; elapsed = 00:00:36 . Memory (MB): peak = 1871.934 ; gain = 149.1482default:default
k

Phase %s%s
101*constraints2
11 2default:default2&
Post Router Timing2default:defaultZ18-101
~
Estimated Timing Summary %s
57*route2J
6| WNS=0.486  | TNS=0      | WHS=0.011  | THS=0      |
2default:defaultZ35-57
�
�The final timing numbers are based on the router estimated timing analysis. For a complete and accurate timing signoff, please run report_timing_summary.
127*routeZ35-327
=
1Phase 11 Post Router Timing | Checksum: d01586f6
*common
�

%s
*constraints2q
]Time (s): cpu = 00:01:04 ; elapsed = 00:00:37 . Memory (MB): peak = 1871.934 ; gain = 149.1482default:default
4
Router Completed Successfully
16*routeZ35-16
3
'Ending Route Task | Checksum: d01586f6
*common
�

%s
*constraints2q
]Time (s): cpu = 00:01:04 ; elapsed = 00:00:37 . Memory (MB): peak = 1871.934 ; gain = 149.1482default:default
�

%s
*constraints2q
]Time (s): cpu = 00:01:04 ; elapsed = 00:00:37 . Memory (MB): peak = 1871.934 ; gain = 149.1482default:default
Q
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
512default:default2
572default:default2
02default:default2
02default:defaultZ4-41
U
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:01:072default:default2
00:00:402default:default2
1871.9342default:default2
163.1452default:defaultZ17-268
4
Writing XDEF routing.
211*designutilsZ20-211
A
#Writing XDEF routing logical nets.
209*designutilsZ20-209
A
#Writing XDEF routing special nets.
210*designutilsZ20-210
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:022default:default2
00:00:022default:default2
1871.9382default:default2
0.0002default:defaultZ17-268
G
Running DRC with %s threads
24*drc2
42default:defaultZ23-27
�
#The results of DRC are in file %s.
168*coretcl2�
|/home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.runs/impl_1/design_1_wrapper_drc_routed.rpt|/home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.runs/impl_1/design_1_wrapper_drc_routed.rpt2default:default8Z2-168
�
UpdateTimingParams:%s.
91*timing2P
< Speed grade: -1, Delay Type: min_max, Constraints type: SDC2default:defaultZ38-91
s
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
42default:defaultZ38-191
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2+
report_timing_summary: 2default:default2
00:00:132default:default2
00:00:062default:default2
1940.9342default:default2
41.0002default:defaultZ17-268
B
,Running Vector-less Activity Propagation...
51*powerZ33-51
G
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1
�
�MMCM/PLL RST static_probability should be either 0 or 1, power analysis is using 0 by default.
Use 'set_switching_activity -static_probability 1 -signal_rate 0 [get_nets %s]'  to set the static_probabiblity to '1'  if desired.207*power2

reset_IBUF2default:defaultZ33-218
�
�MMCM/PLL RST static_probability should be either 0 or 1, power analysis is using 0 by default.
Use 'set_switching_activity -static_probability 1 -signal_rate 0 [get_nets %s]'  to set the static_probabiblity to '1'  if desired.207*power2p
\design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_ddr2_infrastructure/sys_rst_act_hi2default:defaultZ33-218
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
report_power: 2default:default2
00:00:052default:default2
00:00:052default:default2
1966.9492default:default2
26.0162default:defaultZ17-268


End Record