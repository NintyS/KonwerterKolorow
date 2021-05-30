#ifndef CONVERTER_H
#define CONVERTER_H

#include <QGuiApplication>
#include <QStringList>
#include <iostream>
#include <QString>
#include <QObject>
#include <QScreen>
#include <string>

class Converter : public QObject {

    Q_OBJECT

public:
    explicit Converter(QObject *parent = nullptr);

public slots:
    void convertToRGB(QString hex);

    void convertToHEX(QString rgb);

    QString returnOutput();

private:
    QString outputVarable;

};

#endif // CONVERTER_H
