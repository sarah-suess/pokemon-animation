#include "gba.h"
#include "print.h"
#include <stdbool.h>

extern unsigned short* videoBuffer;

void update();
void draw();

unsigned short oldButtons;
unsigned short buttons;

int bX, bY, bOldX, bOldY, frame, time, timestep, direction;

bool play;

int main() {
	REG_DISPCTL = MODE(3) | BG2_ENABLE;

    oldButtons = 0;
	buttons = REG_BUTTONS;
	bX = 0;
	bY = 14;
	frame = 0;
	time = 0;
	timestep = 3;
	play = false;
	direction = 1;
	fillScreen(GRAY);
    while (1) {
		oldButtons = buttons;
		buttons = REG_BUTTONS;

		update();
		waitForVBlank();
		draw();
		time++;
	}
}

void update() {
	if (BUTTON_PRESSED(BUTTON_A)) {
		if (frame == 86) {
			frame = 0;
		} else {
			frame++;
		}
	}
	if (BUTTON_PRESSED(BUTTON_B)) {
		if (frame == 0) {
			frame = 86;
		} else {
			frame--;
		}
	}
	if (BUTTON_PRESSED(BUTTON_LEFT)) {
		frame = 0;
	}
	if (BUTTON_PRESSED(BUTTON_RIGHT)) {
		frame = 86;
	}
	if (BUTTON_PRESSED(BUTTON_START)) {
		play = !play;
	}
	if (BUTTON_PRESSED(BUTTON_SELECT)) {
		direction *= -1;
	}
	if (BUTTON_PRESSED(BUTTON_DOWN)) {
		if (timestep < 6) {
			timestep++;
		}
	}
	if (BUTTON_PRESSED(BUTTON_UP)) {
		if (timestep > 0) {
			timestep--;
		}
	}
	

	bOldX = bX;
	bOldY = bY;
	if (time % timestep == 0 && time != 0) {
		if (play) {
			frame += direction;
			if (frame == 87) {
				frame = 0;
			} else if (frame == -1) {
				frame = 86;
			}
		}
		switch (frame) {
			case 0:
				bX = 0;
				bY = 14;
				break;
			case 1:
				bX = 2;
				break;
			case 2:
				bX = 4;
				break;
			case 3:
				bX = 6;
				break;
			case 4:
				bX = 8;
				break;
			case 5:
				bX = 10;
				break;
			case 6:
				bX = 12;
				bY = 16;
				break;
			case 7:
				bX = 14;
				break;
			case 8:
				bX = 16;
				bY = 18;
				break;
			case 9:
				bX = 18;
				break;
			case 10:
				bX = 20;
				bY = 20;
				break;
			case 11:
				bX = 22;
				bY = 22;
				break;
			case 12:
				bX = 24;
				break;
			case 13:
				bX = 26;
				bY = 24;
				break;
			case 14:
				bX = 28;
				bY = 26;
				break;
			case 15:
				bX = 30;
				bY = 28;
				break;
			case 16:
				bX = 32;
				bY = 30;
				break;
			case 17:
				bX = 34;
				bY = 32;
				break;
			case 18:
				bY = 34;
				break;
			case 19:
				bX = 36;
				bY = 36;
				break;
			case 20:
				bX = 38;
				bY = 38;
				break;
			case 21:
				bY = 40;
				break;
			case 22:
				bX = 40;
				bY = 42;
				break;
			case 23:
				bY = 44;
				break;
			case 24:
				bX = 42;
				bY = 46;
				break;
			case 25:
				bX = 42;
				bY = 46;
				break;
			case 26:
				bY = 48;
				break;
			case 27:
				bX = 44;
				bY = 50;
				break;
			case 28:
				bY = 52;
				break;
			case 29:
				bY = 54;
				break;
			case 30:
				bY = 56;
				break;
			case 31:
				bX = 46;
				bY = 58;
				break;
			case 32:
				bY = 60;
				break;
			case 33:
				bY = 62;
				break;
			case 34:
				bY = 64;
				break;
			case 35:
				bY = 66;
				break;
			case 36:
				bY = 68;
				break;
			case 37:
				bY = 70;
				break;
			case 38:
				bY = 72;
				break;
			case 39:
				bY = 74;
				break;
			case 40:
				bX = 48;
				bY = 72;
				break;
			case 41:
				bY = 70;
				break;
			case 42:
				bY = 68;
				break;
			case 43:
				bX = 50;
				bY = 66;
				break;
			case 44:
				bY = 64;
				break;
			case 45:
				bY = 62;
				break;
			case 46:
				bX = 52;
				bY = 60;
				break;
			case 47:
				bY = 58;
				break;
			case 48:
				bX = 54;
				bY = 56;
				break;
			case 49:
				bY = 54;
				break;
			case 50:
				bX = 56;
				bY = 52;
				break;
			case 51:
				bX = 58;
				bY = 50;
				break;
			case 52:
				bX = 60;
				bY = 48;
				break;
			case 53:
				bX = 62;
				break;
			case 54:
				bX = 64;
				bY = 46;
				break;
			case 55:
				bX = 66;
				break;
			case 56:
				bX = 68;
				break;
			case 57:
				bX = 70;
				break;
			case 58:
				bX = 72;
				break;
			case 59:
				bX = 74;
				break;
			case 60:
				bX = 78;
				bY = 48;
				break;
			case 61:
				bX = 80;
				break;
			case 62:
				bX = 82;
				bY = 50;
				break;
			case 63:
				bX = 84;
				bY = 52;
				break;
			case 64:
				bX = 86;
				bY = 54;
				break;
			case 65:
				bY = 56;
				break;
			case 66:
				bX = 88;
				bY = 58;
				break;
			case 67:
				bY = 60;
				break;
			case 68:
				bY = 62;
				break;
			case 69:
				bX = 90;
				bY = 64;
				break;
			case 70:
				bY = 66;
				break;
			case 71:
				bY = 68;
				break;
			case 72:
				bX = 92;
				bY = 70;
				break;
			case 73: //bounce
				bY = 72;
				break;
			case 74: //bouce
				bY = 74;
				break;
			case 75: //bounce
				bX = 92;
				bY = 74;
				break;
			case 76: //normal
				bX = 94;
				bY = 73;
				break;
			case 77: //normal
				bX = 94;
				bY = 73;
				break;
			case 78: //semi-open
				bX = 94;
				bY = 72;
				break;
			case 79: //full open
				bX = 94;
				bY = 69;
				break;
			case 80: //full open
				bX = 94;
				bY = 69;
				break;
			case 81: //full open
				bX = 94;
				bY = 69;
				break;
			case 82: //mini explo
				bX = 94;
				bY = 69;
				break;
			case 83: //mini explo
				bX = 94;
				bY = 69;
				break;
			case 84: //big explo
				bX = 94;
				bY = 69;
				break;
			case 85: //big explo
				bX = 94;
				bY = 69;
				break;
			case 86: //big explo
				bX = 94;
				bY = 69;
				break;
			default:
				frame = 0;
				bX = 0;
				bY = 14;
				break;
		}
	}
}

void draw() {
	drawBlank(bOldX, bOldY);
	switch (frame)
	{
	case (38):
	case (39):
	case (40):
	case (73):
	case (74):
	case (75):
		drawBallSquish(bX,bY);
		break;
	case (78):
		drawBallSemiOpen(bX,bY);
		break;
	case (79):
	case (80):
	case (81):
		drawBallFullOpen(bX,bY);
		break;
	case (82):
	case (83):
		drawExpMini(bX,bY);
		break;
	case (84):
	case (85):
	case (86):
		drawExpFull(bX,bY);
		break;
	default:
		drawBall(bX,bY);
		break;
	}
}