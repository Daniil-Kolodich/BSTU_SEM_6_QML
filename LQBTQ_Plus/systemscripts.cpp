#include "systemscripts.h"
#include <QObject>
#include <QDebug>
#include <fstream>
#include <iostream>
#include <sstream>
#include <stdexcept>
#include <stdio.h>
#include <string>
#include <iostream>
SystemScripts::SystemScripts(QObject *parent) : QObject(parent)
{

}


QString SystemScripts::GetCommand() {
    return command;
}
void SystemScripts::SetCommand(QString str) {
    qDebug() << str;
    command = str;
}
QString SystemScripts::GetResult() {
    return result;
}
void SystemScripts::invoke () {
    result = command + QString(" > ") + QString(fileName.c_str());
    system(qPrintable(result));
    qDebug() << qPrintable(result);
    std::ifstream file(fileName);
    std::string data;
    std::string line;
    while(std::getline( file, line ))
    {
        data += line;
        data += '\n';
    }
    file.close();
    result = QString::fromStdString (data);}
