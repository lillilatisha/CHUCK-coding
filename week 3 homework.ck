SinOsc s => dac;

[60, 64, 67, 71, 72, 71, 67,64, 60, 72, 76, 79,] @=> int A[];
[.5,.2,.4,.5,.3,.4,.5,.3,.5,.2,.4] @=> float notes[];


<<< A.cap() >>>;

for( 0 => int i; i < A.cap(); i++)
{
    
    <<< i, A[i] >>>;
    Std.mtof(A[i]) => s.freq;
    notes[i]::second => now;
}
