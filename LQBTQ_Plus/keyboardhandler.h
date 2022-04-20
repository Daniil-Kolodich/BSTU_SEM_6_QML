#ifndef KEYBOARDHANDLER_H
#define KEYBOARDHANDLER_H

#include <QObject>
#include <iostream>

class KeyboardHandler : public QObject
{
    Q_OBJECT
public:
    explicit KeyboardHandler(QObject *parent = nullptr);
    Q_INVOKABLE void invert();
    Q_INVOKABLE void flush();
};

#endif // KEYBOARDHANDLER_H
