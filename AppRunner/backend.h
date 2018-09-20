#ifndef BACKEND_H
#define BACKEND_H

#include <QObject>
#include <QString>

class Backend : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString userName READ userName WRITE setUserName NOTIFY userNameChanged)

public:
    explicit Backend(QObject *parent = nullptr);

    QString userName();
    void setUserName(const QString &userName);

public slots:
    void doSomething();

signals:
    void userNameChanged();

private:
    QString m_userName;
};

#endif // BACKEND_H
