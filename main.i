# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
# 1 "gba.h" 1




typedef signed char s8;
typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef signed int s32;
typedef unsigned int u32;
typedef signed long long s64;
typedef unsigned long long u64;
# 33 "gba.h"
void waitForVBlank();
# 52 "gba.h"
void drawRect(int x, int y, int width, int height, volatile unsigned short color);
void fillScreen(volatile unsigned short color);
# 69 "gba.h"
extern unsigned short oldButtons;
# 2 "main.c" 2
# 1 "print.h" 1
# 26 "print.h"
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 1 3 4
# 9 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 1 3 4
# 12 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 1 3 4







# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 1 3 4
# 28 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_newlib_version.h" 1 3 4
# 29 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 2 3 4
# 9 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 2 3 4
# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4

# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 1 3 4
# 35 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 187 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 1 3 4
# 20 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 3 4
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 51 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 61 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 71 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 81 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 10 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 2 3 4
# 27 "print.h" 2
# 36 "print.h"

# 36 "print.h"
void mgba_printf_level(int level, const char* ptr, ...);
void mgba_printf(const char* string, ...);
void mgba_break(void);
uint8_t mgba_open(void);
void mgba_close(void);
# 3 "main.c" 2
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdbool.h" 1 3 4
# 4 "main.c" 2

extern unsigned short* videoBuffer;

void update();
void draw();

unsigned short oldButtons;
unsigned short buttons;

int bX, bY, bOldX, bOldY, frame, time, timestep, direction;


# 15 "main.c" 3 4
_Bool 
# 15 "main.c"
    play;

int main() {
 (*(volatile unsigned short *)0x4000000) = ((3) & 7) | (1<<10);

    oldButtons = 0;
 buttons = (*(volatile unsigned short *)0x04000130);
 bX = 0;
 bY = 14;
 frame = 0;
 time = 0;
 timestep = 3;
 play = 
# 27 "main.c" 3 4
       0
# 27 "main.c"
            ;
 direction = 1;
 fillScreen(((15) | (15) << 5 | (15) << 10));
    while (1) {
  oldButtons = buttons;
  buttons = (*(volatile unsigned short *)0x04000130);

  update();
  waitForVBlank();
  draw();
  time++;
 }
}

void update() {
 if (((~(*(volatile unsigned short *)0x04000130) & ((1<<0))) && !(~oldButtons & ((1<<0))))) {
  if (frame == 86) {
   frame = 0;
  } else {
   frame++;
  }
 }
 if (((~(*(volatile unsigned short *)0x04000130) & ((1<<1))) && !(~oldButtons & ((1<<1))))) {
  if (frame == 0) {
   frame = 86;
  } else {
   frame--;
  }
 }
 if (((~(*(volatile unsigned short *)0x04000130) & ((1<<5))) && !(~oldButtons & ((1<<5))))) {
  frame = 0;
 }
 if (((~(*(volatile unsigned short *)0x04000130) & ((1<<4))) && !(~oldButtons & ((1<<4))))) {
  frame = 86;
 }
 if (((~(*(volatile unsigned short *)0x04000130) & ((1<<3))) && !(~oldButtons & ((1<<3))))) {
  play = !play;
 }
 if (((~(*(volatile unsigned short *)0x04000130) & ((1<<2))) && !(~oldButtons & ((1<<2))))) {
  direction *= -1;
 }
 if (((~(*(volatile unsigned short *)0x04000130) & ((1<<7))) && !(~oldButtons & ((1<<7))))) {
  if (timestep < 6) {
   timestep++;
  }
 }
 if (((~(*(volatile unsigned short *)0x04000130) & ((1<<6))) && !(~oldButtons & ((1<<6))))) {
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
   case 73:
    bY = 72;
    break;
   case 74:
    bY = 74;
    break;
   case 75:
    bX = 92;
    bY = 74;
    break;
   case 76:
    bX = 94;
    bY = 73;
    break;
   case 77:
    bX = 94;
    bY = 73;
    break;
   case 78:
    bX = 94;
    bY = 72;
    break;
   case 79:
    bX = 94;
    bY = 69;
    break;
   case 80:
    bX = 94;
    bY = 69;
    break;
   case 81:
    bX = 94;
    bY = 69;
    break;
   case 82:
    bX = 94;
    bY = 69;
    break;
   case 83:
    bX = 94;
    bY = 69;
    break;
   case 84:
    bX = 94;
    bY = 69;
    break;
   case 85:
    bX = 94;
    bY = 69;
    break;
   case 86:
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
