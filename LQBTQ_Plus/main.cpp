#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "systemscripts.h"
#include "keyboardhandler.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;
    qmlRegisterType<KeyboardHandler>("KeyboardHandler", 1, 0, "KeyboardHandler");
    qmlRegisterType<SystemScripts>("SystemScripts", 1, 0, "SystemScripts");
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}


