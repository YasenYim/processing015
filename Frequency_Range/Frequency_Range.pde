
import ddf.minim.*;
import ddf.minim.ugens.*;

Minim minim;
AudioOutput out;

Oscil wave;


void setup() {

  size(800, 400);

  minim = new Minim( this );
  out   = minim.getLineOut();

  wave = new Oscil( 440, 0.8, Waves.SINE );

  wave.patch(out);
}

void draw() {

  float power=map(mouseX, 0, width, log(20), log(20000));
  float freq=exp(power);

  wave.setFrequency(freq);

  background(180);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(60);
  text("Freq: "+int(freq)+"Hz", width/2, height/3);

  line(0, 300, width, 300);
  line(mouseX, 290, mouseX, 310);
}
