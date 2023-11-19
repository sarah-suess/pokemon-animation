#include "gba.h"

volatile unsigned short *videoBuffer = (unsigned short *)0x6000000;

void drawRect(int x, int y, int width, int height, unsigned short color) {
    for (int i = 0; i < height; i++) {
        for (int j = 0; j < width; j++) {
            setPixel(x + j, y + i, color);
        }
    }
}

void fillScreen(unsigned short color) {
    // TODO: complete this function from Lab02!
    for (int i = 0; i < 38400; i++) {
        videoBuffer[i] = color;
    }
}

void waitForVBlank() {
    while (REG_VCOUNT >= 160);
    while (REG_VCOUNT < 160);
}

void drawBlank(int x, int y) {
    drawRect(x, y, 17, 17, GRAY);
}

void drawBall(int x, int y) {
    setPixel(x+4,y+0,BLACK);
    setPixel(x+5,y+0,BLACK);
    setPixel(x+6,y+0,BLACK);
    setPixel(x+7,y+0,BLACK);

    setPixel(x+2,y+1,BLACK);
    setPixel(x+3,y+1,BLACK);
    setPixel(x+4,y+1,RED);
    setPixel(x+5,y+1,RED);
    setPixel(x+6,y+1,RED);
    setPixel(x+7,y+1,RED);
    setPixel(x+8,y+1,BLACK);
    setPixel(x+9,y+1,BLACK);

    setPixel(x+1,y+2,BLACK);
    setPixel(x+2,y+2,RED);
    setPixel(x+3,y+2,RED);
    setPixel(x+4,y+2,RED);
    setPixel(x+5,y+2,RED);
    setPixel(x+6,y+2,RED);
    setPixel(x+7,y+2,RED);
    setPixel(x+8,y+2,RED);
    setPixel(x+9,y+2,DARKRED);
    setPixel(x+10,y+2,BLACK);

    setPixel(x+1,y+3,BLACK);
    setPixel(x+2,y+3,RED);
    setPixel(x+3,y+3,WHITE);
    setPixel(x+4,y+3,WHITE);
    setPixel(x+5,y+3,RED);
    setPixel(x+6,y+3,RED);
    setPixel(x+7,y+3,RED);
    setPixel(x+8,y+3,RED);
    setPixel(x+9,y+3,DARKRED);
    setPixel(x+10,y+3,BLACK);

    setPixel(x+0,y+4,BLACK);
    setPixel(x+1,y+4,RED);
    setPixel(x+2,y+4,RED);
    setPixel(x+3,y+4,RED);
    setPixel(x+4,y+4,RED);
    setPixel(x+5,y+4,RED);
    setPixel(x+6,y+4,RED);
    setPixel(x+7,y+4,RED);
    setPixel(x+8,y+4,RED);
    setPixel(x+9,y+4,RED);
    setPixel(x+10,y+4,DARKRED);
    setPixel(x+11,y+4,BLACK);

    setPixel(x+0,y+5,BLACK);
    setPixel(x+1,y+5,RED);
    setPixel(x+2,y+5,RED);
    setPixel(x+3,y+5,RED);
    setPixel(x+4,y+5,RED);
    setPixel(x+5,y+5,BLACK);
    setPixel(x+6,y+5,BLACK);
    setPixel(x+7,y+5,RED);
    setPixel(x+8,y+5,RED);
    setPixel(x+9,y+5,RED);
    setPixel(x+10,y+5,DARKRED);
    setPixel(x+11,y+5,BLACK);

    setPixel(x+0,y+6,BLACK);
    setPixel(x+1,y+6,BLACK);
    setPixel(x+2,y+6,RED);
    setPixel(x+3,y+6,RED);
    setPixel(x+4,y+6,BLACK);
    setPixel(x+5,y+6,WHITE);
    setPixel(x+6,y+6,GRAY);
    setPixel(x+7,y+6,BLACK);
    setPixel(x+8,y+6,RED);
    setPixel(x+9,y+6,RED);
    setPixel(x+10,y+6,BLACK);
    setPixel(x+11,y+6,BLACK);

    setPixel(x+0,y+7,BLACK);
    setPixel(x+1,y+7,WHITE);
    setPixel(x+2,y+7,BLACK);
    setPixel(x+3,y+7,BLACK);
    setPixel(x+4,y+7,BLACK);
    setPixel(x+5,y+7,GRAY);
    setPixel(x+6,y+7,GRAY);
    setPixel(x+7,y+7,BLACK);
    setPixel(x+8,y+7,BLACK);
    setPixel(x+9,y+7,BLACK);
    setPixel(x+10,y+7,GRAY);
    setPixel(x+11,y+7,BLACK);

    setPixel(x+1,y+8,BLACK);
    setPixel(x+2,y+8,WHITE);
    setPixel(x+3,y+8,WHITE);
    setPixel(x+4,y+8,WHITE);
    setPixel(x+5,y+8,BLACK);
    setPixel(x+6,y+8,BLACK);
    setPixel(x+7,y+8,WHITE);
    setPixel(x+8,y+8,WHITE);
    setPixel(x+9,y+8,GRAY);
    setPixel(x+10,y+8,BLACK);

    setPixel(x+1,y+9,BLACK);
    setPixel(x+2,y+9,WHITE);
    setPixel(x+3,y+9,WHITE);
    setPixel(x+4,y+9,WHITE);
    setPixel(x+5,y+9,WHITE);
    setPixel(x+6,y+9,WHITE);
    setPixel(x+7,y+9,GRAY);
    setPixel(x+8,y+9,GRAY);
    setPixel(x+9,y+9,GRAY);
    setPixel(x+10,y+9,BLACK);

    setPixel(x+2,y+10,BLACK);
    setPixel(x+3,y+10,BLACK);
    setPixel(x+4,y+10,GRAY);
    setPixel(x+5,y+10,GRAY);
    setPixel(x+6,y+10,GRAY);
    setPixel(x+7,y+10,GRAY);
    setPixel(x+8,y+10,BLACK);
    setPixel(x+9,y+10,BLACK);

    setPixel(x+4,y+11,BLACK);
    setPixel(x+5,y+11,BLACK);
    setPixel(x+6,y+11,BLACK);
    setPixel(x+7,y+11,BLACK);
}

void drawBallSquish(int x, int y) {
    setPixel(x+4,y+0,BLACK);
    setPixel(x+5,y+0,BLACK);
    setPixel(x+6,y+0,BLACK);
    setPixel(x+7,y+0,BLACK);
    setPixel(x+8,y+0,BLACK);
    setPixel(x+9,y+0,BLACK);

    setPixel(x+2,y+1,BLACK);
    setPixel(x+3,y+1,BLACK);
    setPixel(x+4,y+1,RED);
    setPixel(x+5,y+1,RED);
    setPixel(x+6,y+1,RED);
    setPixel(x+7,y+1,RED);
    setPixel(x+8,y+1,RED);
    setPixel(x+9,y+1,RED);
    setPixel(x+10,y+1,BLACK);
    setPixel(x+11,y+1,BLACK);

    setPixel(x+1,y+2,BLACK);
    setPixel(x+2,y+2,RED);
    setPixel(x+3,y+2,RED);
    setPixel(x+4,y+2,RED);
    setPixel(x+5,y+2,RED);
    setPixel(x+6,y+2,RED);
    setPixel(x+7,y+2,RED);
    setPixel(x+8,y+2,RED);
    setPixel(x+9,y+2,RED);
    setPixel(x+10,y+2,RED);
    setPixel(x+11,y+2,DARKRED);
    setPixel(x+12,y+2,BLACK);

    setPixel(x+1,y+3,BLACK);
    setPixel(x+2,y+3,RED);
    setPixel(x+3,y+3,WHITE);
    setPixel(x+4,y+3,WHITE);
    setPixel(x+5,y+3,WHITE);
    setPixel(x+6,y+3,RED);
    setPixel(x+7,y+3,RED);
    setPixel(x+8,y+3,RED);
    setPixel(x+9,y+3,RED);
    setPixel(x+10,y+3,RED);
    setPixel(x+11,y+3,DARKRED);
    setPixel(x+12,y+3,BLACK);

    setPixel(x+0,y+4,BLACK);
    setPixel(x+1,y+4,RED);
    setPixel(x+2,y+4,RED);
    setPixel(x+3,y+4,RED);
    setPixel(x+4,y+4,RED);
    setPixel(x+5,y+4,RED);
    setPixel(x+6,y+4,RED);
    setPixel(x+7,y+4,RED);
    setPixel(x+8,y+4,RED);
    setPixel(x+9,y+4,RED);
    setPixel(x+10,y+4,RED);
    setPixel(x+11,y+4,RED);
    setPixel(x+12,y+4,DARKRED);
    setPixel(x+13,y+4,BLACK);

    setPixel(x+0,y+5,BLACK);
    setPixel(x+1,y+5,BLACK);
    setPixel(x+2,y+5,RED);
    setPixel(x+3,y+5,RED);
    setPixel(x+4,y+5,RED);
    setPixel(x+5,y+5,RED);
    setPixel(x+6,y+5,BLACK);
    setPixel(x+7,y+5,BLACK);
    setPixel(x+8,y+5,RED);
    setPixel(x+9,y+5,RED);
    setPixel(x+10,y+5,RED);
    setPixel(x+11,y+5,RED);
    setPixel(x+12,y+5,BLACK);
    setPixel(x+13,y+5,BLACK);

    setPixel(x+0,y+6,BLACK);
    setPixel(x+1,y+6,WHITE);
    setPixel(x+2,y+6,BLACK);
    setPixel(x+3,y+6,BLACK);
    setPixel(x+4,y+6,BLACK);
    setPixel(x+5,y+6,BLACK);
    setPixel(x+6,y+6,WHITE);
    setPixel(x+7,y+6,GRAY);
    setPixel(x+8,y+6,BLACK);
    setPixel(x+9,y+6,BLACK);
    setPixel(x+10,y+6,BLACK);
    setPixel(x+11,y+6,BLACK);
    setPixel(x+12,y+6,GRAY);
    setPixel(x+13,y+6,BLACK);

    setPixel(x+1,y+7,BLACK);
    setPixel(x+2,y+7,WHITE);
    setPixel(x+3,y+7,WHITE);
    setPixel(x+4,y+7,WHITE);
    setPixel(x+5,y+7,WHITE);
    setPixel(x+6,y+7,BLACK);
    setPixel(x+7,y+7,BLACK);
    setPixel(x+8,y+7,WHITE);
    setPixel(x+9,y+7,WHITE);
    setPixel(x+10,y+7,WHITE);
    setPixel(x+11,y+7,GRAY);
    setPixel(x+12,y+7,BLACK);
    
    setPixel(x+1,y+8,BLACK);
    setPixel(x+2,y+8,WHITE);
    setPixel(x+3,y+8,WHITE);
    setPixel(x+4,y+8,WHITE);
    setPixel(x+5,y+8,WHITE);
    setPixel(x+6,y+8,WHITE);
    setPixel(x+7,y+8,WHITE);
    setPixel(x+8,y+8,WHITE);
    setPixel(x+9,y+8,WHITE);
    setPixel(x+10,y+8,WHITE);
    setPixel(x+11,y+8,GRAY);
    setPixel(x+12,y+8,BLACK);

    setPixel(x+2,y+9,BLACK);
    setPixel(x+3,y+9,BLACK);
    setPixel(x+4,y+9,WHITE);
    setPixel(x+5,y+9,WHITE);
    setPixel(x+6,y+9,WHITE);
    setPixel(x+7,y+9,WHITE);
    setPixel(x+8,y+9,WHITE);
    setPixel(x+9,y+9,WHITE);
    setPixel(x+10,y+9,BLACK);
    setPixel(x+11,y+9,BLACK);

    setPixel(x+4,y+10,BLACK);
    setPixel(x+5,y+10,BLACK);
    setPixel(x+6,y+10,BLACK);
    setPixel(x+7,y+10,BLACK);
    setPixel(x+8,y+10,BLACK);
    setPixel(x+9,y+10,BLACK);
}

void drawBallFullOpen(int x, int y) {
    setPixel(x+4,y+0,RED);
    setPixel(x+5,y+0,BLACK);
    setPixel(x+6,y+0,BLACK);
    setPixel(x+7,y+0,DARKRED);

    setPixel(x+2,y+1,RED);
    setPixel(x+3,y+1,RED);
    setPixel(x+4,y+1,BLACK);
    setPixel(x+5,y+1,WHITE);
    setPixel(x+6,y+1,GRAY);
    setPixel(x+7,y+1,BLACK);
    setPixel(x+8,y+1,DARKRED);
    setPixel(x+9,y+1,DARKRED);

    setPixel(x+1,y+2,RED);
    setPixel(x+2,y+2,BLACK);
    setPixel(x+3,y+2,BLACK);
    setPixel(x+4,y+2,GRAY);
    setPixel(x+5,y+2,BLACK);
    setPixel(x+6,y+2,BLACK);
    setPixel(x+7,y+2,GRAY);
    setPixel(x+8,y+2,BLACK);
    setPixel(x+9,y+2,BLACK);
    setPixel(x+10,y+2,DARKRED);

    setPixel(x+1,y+3,BLACK);
    setPixel(x+2,y+3,GRAY);
    setPixel(x+3,y+3,GRAY);
    setPixel(x+4,y+3,GRAY);
    setPixel(x+5,y+3,GRAY);
    setPixel(x+6,y+3,GRAY);
    setPixel(x+7,y+3,GRAY);
    setPixel(x+8,y+3,GRAY);
    setPixel(x+9,y+3,GRAY);
    setPixel(x+10,y+3,BLACK);

    setPixel(x+0,y+4,DARKRED);
    setPixel(x+1,y+4,GRAY);
    setPixel(x+2,y+4,GRAY);
    setPixel(x+3,y+4,GRAY);
    setPixel(x+4,y+4,GRAY);
    setPixel(x+5,y+4,GRAY);
    setPixel(x+6,y+4,GRAY);
    setPixel(x+7,y+4,GRAY);
    setPixel(x+8,y+4,GRAY);
    setPixel(x+9,y+4,GRAY);
    setPixel(x+10,y+4,GRAY);
    setPixel(x+11,y+4,DARKRED);

    setPixel(x+0,y+5,BLACK);
    setPixel(x+1,y+5,GRAY);
    setPixel(x+2,y+5,GRAY);
    setPixel(x+3,y+5,GRAY);
    setPixel(x+4,y+5,GRAY);
    setPixel(x+5,y+5,GRAY);
    setPixel(x+6,y+5,GRAY);
    setPixel(x+7,y+5,GRAY);
    setPixel(x+8,y+5,GRAY);
    setPixel(x+9,y+5,GRAY);
    setPixel(x+10,y+5,GRAY);
    setPixel(x+11,y+5,BLACK);

    setPixel(x+0,y+6,BLACK);
    setPixel(x+1,y+6,GRAY);
    setPixel(x+2,y+6,GRAY);
    setPixel(x+3,y+6,GRAY);
    setPixel(x+4,y+6,GRAY);
    setPixel(x+5,y+6,GRAY);
    setPixel(x+6,y+6,GRAY);
    setPixel(x+7,y+6,GRAY);
    setPixel(x+8,y+6,GRAY);
    setPixel(x+9,y+6,GRAY);
    setPixel(x+10,y+6,GRAY);
    setPixel(x+11,y+6,BLACK);

    setPixel(x+1,y+7,BLACK);
    setPixel(x+2,y+7,GRAY);
    setPixel(x+3,y+7,GRAY);
    setPixel(x+4,y+7,GRAY);
    setPixel(x+5,y+7,GRAY);
    setPixel(x+6,y+7,GRAY);
    setPixel(x+7,y+7,GRAY);
    setPixel(x+8,y+7,GRAY);
    setPixel(x+9,y+7,GRAY);
    setPixel(x+10,y+7,BLACK);

    setPixel(x+2,y+8,BLACK);
    setPixel(x+3,y+8,BLACK);
    setPixel(x+4,y+8,GRAY);
    setPixel(x+5,y+8,GRAY);
    setPixel(x+6,y+8,GRAY);
    setPixel(x+7,y+8,GRAY);
    setPixel(x+8,y+8,BLACK);
    setPixel(x+9,y+8,BLACK);

    setPixel(x+1,y+9,BLACK);
    setPixel(x+2,y+9,WHITE);
    setPixel(x+3,y+9,BLACK);
    setPixel(x+4,y+9,BLACK);
    setPixel(x+5,y+9,BLACK);
    setPixel(x+6,y+9,BLACK);
    setPixel(x+7,y+9,BLACK);
    setPixel(x+8,y+9,BLACK);
    setPixel(x+9,y+9,GRAY);
    setPixel(x+10,y+9,BLACK);

    setPixel(x+0,y+10,BLACK);
    setPixel(x+1,y+10,WHITE);
    setPixel(x+2,y+10,BLACK);
    setPixel(x+3,y+10,BLACK);
    setPixel(x+4,y+10,BLACK);
    setPixel(x+5,y+10,BLACK);
    setPixel(x+6,y+10,BLACK);
    setPixel(x+7,y+10,BLACK);
    setPixel(x+8,y+10,BLACK);
    setPixel(x+9,y+10,BLACK);
    setPixel(x+10,y+10,GRAY);
    setPixel(x+11,y+10,BLACK);

    setPixel(x+0,y+11,BLACK);
    setPixel(x+1,y+11,WHITE);
    setPixel(x+2,y+11,BLACK);
    setPixel(x+3,y+11,BLACK);
    setPixel(x+4,y+11,BLACK);
    setPixel(x+5,y+11,BLACK);
    setPixel(x+6,y+11,BLACK);
    setPixel(x+7,y+11,BLACK);
    setPixel(x+8,y+11,BLACK);
    setPixel(x+9,y+11,BLACK);
    setPixel(x+10,y+11,GRAY);
    setPixel(x+11,y+11,BLACK);

    setPixel(x+1,y+12,BLACK);
    setPixel(x+2,y+12,WHITE);
    setPixel(x+3,y+12,BLACK);
    setPixel(x+4,y+12,BLACK);
    setPixel(x+5,y+12,BLACK);
    setPixel(x+6,y+12,BLACK);
    setPixel(x+7,y+12,BLACK);
    setPixel(x+8,y+12,BLACK);
    setPixel(x+9,y+12,GRAY);
    setPixel(x+10,y+12,BLACK);

    setPixel(x+1,y+13,BLACK);
    setPixel(x+2,y+13,WHITE);
    setPixel(x+3,y+13,WHITE);
    setPixel(x+4,y+13,WHITE);
    setPixel(x+5,y+13,GRAY);
    setPixel(x+6,y+13,GRAY);
    setPixel(x+7,y+13,GRAY);
    setPixel(x+8,y+13,GRAY);
    setPixel(x+9,y+13,GRAY);
    setPixel(x+10,y+13,BLACK);

    setPixel(x+2,y+14,BLACK);
    setPixel(x+3,y+14,BLACK);
    setPixel(x+4,y+14,GRAY);
    setPixel(x+5,y+14,GRAY);
    setPixel(x+6,y+14,GRAY);
    setPixel(x+7,y+14,GRAY);
    setPixel(x+8,y+14,BLACK);
    setPixel(x+9,y+14,BLACK);

    setPixel(x+4,y+15,BLACK);
    setPixel(x+5,y+15,BLACK);
    setPixel(x+6,y+15,BLACK);
    setPixel(x+7,y+15,BLACK);
}

void drawBallSemiOpen(int x, int y) {
    setPixel(x+4,y+0,BLACK);
    setPixel(x+5,y+0,BLACK);
    setPixel(x+6,y+0,BLACK);
    setPixel(x+7,y+0,BLACK);

    setPixel(x+2,y+1,BLACK);
    setPixel(x+3,y+1,BLACK);
    setPixel(x+4,y+1,WHITE);
    setPixel(x+5,y+1,WHITE);
    setPixel(x+6,y+1,DARKRED);
    setPixel(x+7,y+1,DARKRED);
    setPixel(x+8,y+1,BLACK);
    setPixel(x+9,y+1,BLACK);

    setPixel(x+1,y+2,BLACK);
    setPixel(x+2,y+2,WHITE);
    setPixel(x+3,y+2,WHITE);
    setPixel(x+4,y+2,RED);
    setPixel(x+5,y+2,DARKRED);
    setPixel(x+6,y+2,DARKRED);
    setPixel(x+7,y+2,DARKRED);
    setPixel(x+8,y+2,DARKRED);
    setPixel(x+9,y+2,DARKRED);
    setPixel(x+10,y+2,BLACK);

    setPixel(x+1,y+3,BLACK);
    setPixel(x+2,y+3,RED);
    setPixel(x+3,y+3,RED);
    setPixel(x+4,y+3,RED);
    setPixel(x+5,y+3,BLACK);
    setPixel(x+6,y+3,BLACK);
    setPixel(x+7,y+3,DARKRED);
    setPixel(x+8,y+3,DARKRED);
    setPixel(x+9,y+3,DARKRED);
    setPixel(x+10,y+3,BLACK);

    setPixel(x+0,y+4,BLACK);
    setPixel(x+1,y+4,RED);
    setPixel(x+2,y+4,RED);
    setPixel(x+3,y+4,BLACK);
    setPixel(x+4,y+4,BLACK);
    setPixel(x+5,y+4,WHITE);
    setPixel(x+6,y+4,WHITE);
    setPixel(x+7,y+4,BLACK);
    setPixel(x+8,y+4,BLACK);
    setPixel(x+9,y+4,DARKRED);
    setPixel(x+10,y+4,DARKRED);
    setPixel(x+11,y+4,BLACK);

    setPixel(x+0,y+5,BLACK);
    setPixel(x+1,y+5,RED);
    setPixel(x+2,y+5,BLACK);
    setPixel(x+3,y+5,GRAY);
    setPixel(x+4,y+5,GRAY);
    setPixel(x+5,y+5,BLACK);
    setPixel(x+6,y+5,BLACK);
    setPixel(x+7,y+5,GRAY);
    setPixel(x+8,y+5,GRAY);
    setPixel(x+9,y+5,BLACK);
    setPixel(x+10,y+5,DARKRED);
    setPixel(x+11,y+5,BLACK);

    setPixel(x+1,y+6,BLACK);
    setPixel(x+2,y+6,GRAY);
    setPixel(x+3,y+6,BLACK);
    setPixel(x+4,y+6,BLACK);
    setPixel(x+5,y+6,BLACK);
    setPixel(x+6,y+6,BLACK);
    setPixel(x+7,y+6,BLACK);
    setPixel(x+8,y+6,BLACK);
    setPixel(x+9,y+6,GRAY);
    setPixel(x+10,y+6,BLACK);

    setPixel(x+0,y+7,BLACK);
    setPixel(x+1,y+7,GRAY);
    setPixel(x+2,y+7,BLACK);
    setPixel(x+3,y+7,BLACK);
    setPixel(x+4,y+7,BLACK);
    setPixel(x+5,y+7,BLACK);
    setPixel(x+6,y+7,BLACK);
    setPixel(x+7,y+7,BLACK);
    setPixel(x+8,y+7,BLACK);
    setPixel(x+9,y+7,BLACK);
    setPixel(x+10,y+7,GRAY);
    setPixel(x+11,y+7,BLACK);

    setPixel(x+0,y+8,BLACK);
    setPixel(x+1,y+8,GRAY);
    setPixel(x+2,y+8,BLACK);
    setPixel(x+3,y+8,BLACK);
    setPixel(x+4,y+8,BLACK);
    setPixel(x+5,y+8,BLACK);
    setPixel(x+6,y+8,BLACK);
    setPixel(x+7,y+8,BLACK);
    setPixel(x+8,y+8,BLACK);
    setPixel(x+9,y+8,BLACK);
    setPixel(x+10,y+8,WHITE);
    setPixel(x+11,y+8,BLACK);

    setPixel(x+1,y+9,BLACK);
    setPixel(x+2,y+9,WHITE);
    setPixel(x+3,y+9,WHITE);
    setPixel(x+4,y+9,BLACK);
    setPixel(x+5,y+9,BLACK);
    setPixel(x+6,y+9,BLACK);
    setPixel(x+7,y+9,BLACK);
    setPixel(x+8,y+9,WHITE);
    setPixel(x+9,y+9,GRAY);
    setPixel(x+10,y+9,BLACK);

    setPixel(x+1,y+10,BLACK);
    setPixel(x+2,y+10,WHITE);
    setPixel(x+3,y+10,WHITE);
    setPixel(x+4,y+10,WHITE);
    setPixel(x+5,y+10,WHITE);
    setPixel(x+6,y+10,GRAY);
    setPixel(x+7,y+10,GRAY);
    setPixel(x+8,y+10,GRAY);
    setPixel(x+9,y+10,GRAY);
    setPixel(x+10,y+10,BLACK);

    setPixel(x+2,y+11,BLACK);
    setPixel(x+3,y+11,BLACK);
    setPixel(x+4,y+11,GRAY);
    setPixel(x+5,y+11,GRAY);
    setPixel(x+6,y+11,GRAY);
    setPixel(x+7,y+11,GRAY);
    setPixel(x+8,y+11,BLACK);
    setPixel(x+9,y+11,BLACK);

    setPixel(x+4,y+12,BLACK);
    setPixel(x+5,y+12,BLACK);
    setPixel(x+6,y+12,BLACK);
    setPixel(x+7,y+12,BLACK);
}

void drawExpMini(int x, int y) {
    drawRect(x+5,y+3,4,1,YELLOW);

    drawRect(x+3,y+4,8,1,YELLOW);

    drawRect(x+3,y+5,8,1,YELLOW);
    drawRect(x+6,y+5,2,1,WHITE);

    drawRect(x+2,y+6,10,1,YELLOW);
    drawRect(x+5,y+6,4,1,WHITE);

    drawRect(x+2,y+7,10,1,YELLOW);
    drawRect(x+5,y+7,4,1,WHITE);

    drawRect(x+2,y+8,10,1,YELLOW);
    drawRect(x+6,y+8,2,1,WHITE);

    drawRect(x+2,y+9,8,1,YELLOW);

    drawRect(x+5,y+10,4,1,YELLOW);
}

void drawExpFull(int x, int y) {
    drawRect(x+4,y+0,6,1,ORANGE);

    drawRect(x+3,y+1,8,1,ORANGE);
    drawRect(x+5,y+1,4,1,MUTEDYELLOW);

    drawRect(x+2,y+2,11,1,ORANGE);
    drawRect(x+4,y+2,7,1,MUTEDYELLOW);

    drawRect(x+1,y+3,13,1,ORANGE);
    drawRect(x+4,y+3,8,1,YELLOW);
    setPixel(x+6,y+3,WHITE);

    drawRect(x+0,y+4,14,1,ORANGE);
    drawRect(x+3,y+4,10,1,MUTEDYELLOW);
    drawRect(x+5,y+4,3,1,WHITE);

    drawRect(x+0,y+5,15,1,ORANGE);
    drawRect(x+2,y+5,11,1,MUTEDYELLOW);
    drawRect(x+5,y+5,4,1,WHITE);

    drawRect(x+0,y+6,15,1,ORANGE);
    drawRect(x+2,y+6,12,1,MUTEDYELLOW);
    drawRect(x+4,y+6,5,1,WHITE);

    drawRect(x+0,y+7,15,1,ORANGE);
    drawRect(x+1,y+7,13,1,MUTEDYELLOW);
    drawRect(x+4,y+7,6,1,WHITE);

    drawRect(x+0,y+8,15,1,ORANGE);
    drawRect(x+1,y+8,12,1,MUTEDYELLOW);
    drawRect(x+4,y+8,5,1,WHITE);

    drawRect(x+0,y+9,15,1,ORANGE);
    drawRect(x+2,y+9,10,1,MUTEDYELLOW);
    drawRect(x+5,y+9,4,1,WHITE);

    drawRect(x+0,y+10,14,1,ORANGE);
    drawRect(x+2,y+10,10,1,MUTEDYELLOW);
    drawRect(x+6,y+10,2,1,WHITE);

    drawRect(x+1,y+11,13,1,ORANGE);
    drawRect(x+4,y+11,6,1,MUTEDYELLOW);

    drawRect(x+3,y+12,10,1,ORANGE);
    drawRect(x+6,y+12,3,1,MUTEDYELLOW);

    drawRect(x+5,y+13,7,1,ORANGE);
}