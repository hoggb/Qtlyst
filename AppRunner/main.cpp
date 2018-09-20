#include <QCoreApplication>
#include <QProcess>
#include <QStringList>
#include <QDebug>
#include <QObject>
#include <QTextCodec>
#include <QThread>

#define Tokenize(x) #x
#define ToString(x) Tokenize(x)


int main(int argc, char *argv[])
{


    QCoreApplication app(argc, argv);

    //Kill open processes for use
    QProcess openPortProcess;
    QStringList openPortProcessStringList;
    openPortProcessStringList << "-k";
    openPortProcessStringList << "3000/tcp";
    openPortProcess.start("fuser", openPortProcessStringList);
    openPortProcess.waitForFinished();
    openPortProcess.kill();


    //Process for running server from DLL
    QProcess process;
    QStringList stringList;
    stringList << "-r";
    stringList << "--server";
    stringList << "--app-file";
    stringList << ToString(FULL_PATH);

    process.setProcessChannelMode(QProcess::MergedChannels);
    //set required directory to launch server at project location
    process.setWorkingDirectory(ToString(BUILD_PATH));

    process.start("/usr/bin/cutelyst2",  stringList);
    if(!process.waitForStarted()){
        return 0;
    }

    QByteArray data;
    qDebug() << "Server running at localhost:3000...";
    qDebug() << "Reading process stdout (this may take a while)...";

    while(process.waitForReadyRead()){
        data.append(process.readAll());
    }

    qDebug() << data.data();



    auto returnValue = app.exec();


    process.kill();


    return returnValue;
}


