

//run("Z Project...", "projection=[Standard Deviation]");
//run("Duplicate...", "duplicate");

filename = getTitle();
run("Split Channels");
green = "C1-" + filename
selectImage(green);
run("Duplicate...", " ");
selectImage(green);
setOption("ScaleConversions", true);
run("16-bit");
run("Set Scale...", "distance=0 known=0 unit=pixel");
run("Convoluted Background Subtraction", "convolution=Mean radius=10");
setAutoThreshold("Default dark no-reset");
//run("Threshold...");
//setThreshold(7453, 65535, "raw");
setThreshold(6000, 65535, "raw");
//setThreshold(4000, 65535, "raw");
//setThreshold(3000, 65535, "raw");

run("Convert to Mask");
run("Watershed");
run("Analyze Particles...", "size=3-Infinity show=Overlay display");
//run("Analyze Particles...", "size=5-Infinity show=Overlay display");
