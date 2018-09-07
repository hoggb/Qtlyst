#include <QCoreApplication>
#include <QProcess>
#include <QStringList>
#include <QDebug>
#include <QTextCodec>

#define Tokenize(x) #x
#define ToString(x) Tokenize(x)


int main(int argc, char *argv[])
{


    QCoreApplication app(argc, argv);


    //Arguments for running server
    QStringList stringList;
    stringList << "-r";
    stringList << "--server";
    stringList << "--app-file";
    stringList << ToString(FULL_PATH);


    QProcess process;

    //set required directory to launch server at project location
    process.setWorkingDirectory(ToString(BUILD_PATH));

    //start server
    process.start("/usr/bin/cutelyst2",  stringList);
    process.waitForStarted();
    qDebug() << "Firing up server at localhost:3000...";


    auto returnValue = app.exec();


    process.kill();


    return returnValue;
}
