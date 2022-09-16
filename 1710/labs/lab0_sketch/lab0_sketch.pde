// this is an inline comment
/* this is a 
      multiline comment 
            
print("Welcome to EECS1710 F2022 saikoro");
size(250,250);
line(10,10,100,200);
ellipse(100,100,40,80);
      */
      size(500, 500);
      background(200,180,180);
arc(100, 100, 80, 80, 0, HALF_PI);
noFill();
arc(100, 100, 110, 110, HALF_PI, PI);
arc(100, 100, 120, 120, PI, PI+QUARTER_PI);
arc(100, 100, 130, 130, PI+QUARTER_PI, TWO_PI);

fill(255,55,155,50);
arc(100, 300, 120, 120, 0, PI+QUARTER_PI, OPEN);


arc(300, 300, 120, 120, 0, PI+QUARTER_PI, CHORD);
