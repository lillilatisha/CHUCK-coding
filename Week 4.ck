Gain master => dac;
SndBuf kick => master;
SndBuf hihat => master;
SndBuf snare => master;
SndBuf2 stereo => Pan2 p => master;
SndBuf2 stereo2 => Pan2 a => master;

.6 => master.gain;

me.dir() + "/audio/kick_01.wav" => kick.read;
me.dir() + "/audio/hihat_01.wav" => hihat.read;
me.dir() + "/audio/snare_01.wav" => snare.read;
me.dir() + "/audio/stereo_fx_02.wav" => string filename;
me.dir() + "/audio/stereo_fx_03.wav" => string filenam;

filename => stereo.read;
filenam => stereo2.read;


kick.samples() => kick.pos;
hihat.samples() => hihat.pos;
snare.samples() => snare.pos;

0 => int counter;

while (true)
{
    counter % 8 => int beat;
    
    if ( (beat == 0) || (beat == 4) )
    {
        0 => kick.pos;
        Math.random2f(.2, 1.4) => kick.rate;
        
     }
    
    if ( (beat == 2) || (beat == 8) )
    {
        0 => snare.pos;
        Math.random2f(.6, 1.4) => snare.rate;
    }
    
    0 => hihat.pos;
    .1 => hihat.gain;
    Math.random2f(.2,1.8) => hihat.rate;
    Math.random2f(.6, 1.0) => stereo.gain;
    Math.random2f(.2,1.8) => stereo.rate;
    Math.random2f(-1.0, 1.0) => p.pan;
    Math.random2f(.6, 1.0) => stereo2.gain;
    Math.random2f(.2,1.8) => stereo2.rate;
    Math.random2f(-1.0, 1.0) => a.pan;

    0 => stereo.pos;
    0 => stereo2.pos;
    
        <<< "Counter: ", counter, "Beat: ", beat >>>;
        counter++;
        
        250::ms =>now;
        1::second =>now;

}