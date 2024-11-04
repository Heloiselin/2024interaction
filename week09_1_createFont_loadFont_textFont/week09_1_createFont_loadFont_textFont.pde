//week09_1_createFont_loadFont_textFont
size(500,500);
background(0);
textSize(50);
text("Hello",50,50);

PFont font = createFont("標楷體",50);
textFont(font);
text("中文看到了",50,150);

PFont font2 = createFont("elffont-rock.otf",50);
textFont(font2);
text("ㄇㄉㄏㄌ",50,250);
