#ifndef SYSTEMSCRIPTS_H
#define SYSTEMSCRIPTS_H

#include <QObject>
#include <iostream>

class SystemScripts : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString command READ GetCommand WRITE SetCommand)
    Q_PROPERTY(QString result READ GetResult)
public:
    explicit SystemScripts(QObject *parent = nullptr);

    QString GetCommand();
    void SetCommand(QString str);
    QString GetResult();
    Q_INVOKABLE void invoke();
    QString command;
    QString result;
private:
    std::string fileName = "systemScripts.txt";
};

#endif // SYSTEMSCRIPTS_H
