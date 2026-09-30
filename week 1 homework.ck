SinOsc root => dac;
SinOsc third => dac;
SinOsc fifth => dac;

0.3 => root.gain;
0.3 => third.gain;
0.3 => fifth.gain;

440 => root.freq;
523 => third.freq;
659 => fifth.freq;

2:: second => now;

SinOsc m => dac;
SinOsc g => dac;
SinOsc s => dac;

0.3 => m.gain;
0.3 => g.gain;
0.3 => s.gain;

261.63 => m.freq;
329.63 => g.freq;
493.88 => s.freq;

1.5:: second => now;

SinOsc doe => dac;
SinOsc mi => dac;
SinOsc sol => dac;

0.3 => doe.gain;
0.3 => mi.gain;
0.3 => sol.gain;

698.46 => doe.freq;
880 => mi.freq;
261.63 => sol.freq;

2:: second => now;

SinOsc theoryA => dac;
SinOsc theoryB => dac;
SinOsc theoryC => dac;

0.5 => theoryA.gain;
0.5 => theoryB.gain;
0.5 => theoryC.gain;

392.00 => theoryA.freq;
493.88 => theoryB.freq;
587.33 => theoryC.freq;

3:: second => now;

SinOsc ca => dac;
SinOsc den => dac;
SinOsc ce => dac;

0.7 => ca.gain;
0.7 => den.gain;
0.7 => ce.gain;

261.63 => ca.freq;
329.63 => den.freq;
493.88 => ce.freq;

2::second => now;