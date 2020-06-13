getSelectionCoordinates(x,y); 
//print("perimeter and pixel values"); 
//print("x, y, value"); 
run("Set Measurements...", "area center feret's display add redirect=None decimal=3");
run("Analyze Particles...", "size=0-Infinity circularity=0.00-1.00 show=Nothing clear include add");
//run("Clear Results");	// makes sure the Results are cleared before analyzing
roiManager("Measure");
comx = getResult("XM");
comy = getResult("YM");
//print(comx); print(comy);
vx = newArray(x.length); 
vy = newArray(y.length); 
a = newArray(x.length);
b = newArray(x.length);
c = newArray(x.length);
r = newArray(x.length);
phi = newArray(x.length);
phi_tan = newArray(x.length);
for (i =0; i < x.length; i++){ 
     vx[i] = comx; 
     vy[i] = comy;
            } 

for(i = 0; i < x.length; i++){
  a[i] = x[i] - vx[i];
  b[i] = y[i] - vy[i];
  r[i] = sqrt((a[i]*a[i]) + (b[i]*b[i]));

  if(b[i] < 0){
    phi[i] = -acos(a[i]/r[i]);
  }
  else{
    phi[i] = acos(a[i]/r[i]);
  }
  phi_tan[i] = atan2(b[i],a[i]);

  print(phi_tan[i],r[i]);
}