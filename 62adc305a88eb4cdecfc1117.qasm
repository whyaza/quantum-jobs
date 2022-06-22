OPENQASM 2.0;
include "qelib1.inc";



qreg q[5];
creg c[1];
h q[0];
h q[1];
h q[2];
rx(2* pi / 3) q[4];
cx q[0], q[1];
ry(4* pi / 5) q[4];
cx q[0], q[2];
cx q[0], q[3];
cx q[1], q[3];
cx q[2], q[3];
cx q[2], q[4];
cz q[3], q[4];
measure q[2] -> c[0];
measure q[3] -> c[0];
cx q[0], q[4];
cz q[1], q[4];
measure q[0] -> c[0];
measure q[1] -> c[0];
rx(2* pi / 3) q[4];
ry(4* pi / 5) q[4];
measure q[4] -> c[0];