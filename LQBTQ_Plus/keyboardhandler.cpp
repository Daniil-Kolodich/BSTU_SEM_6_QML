#include "keyboardhandler.h"
#include <iostream>
#include <QKeyEvent>
#include <QObject>

KeyboardHandler::KeyboardHandler(QObject *parent) : QObject(parent) {}

void KeyboardHandler::flush() {
    system("sh enable_leds.sh");
}

void KeyboardHandler::invert () {
    system ("xdotool key Num_Lock && xdotool key Caps_Lock");
}

