#include "converter.h"

Converter::Converter(QObject *parent) :
   QObject(parent)
{}

void Converter::convertToRGB(QString hex) { // Funkcja która konwertuje RGB do HEX

    std::string hexString = hex.toUtf8().toStdString();

    std::string output;

    for(int i = 0; i < 6; i += 2) {

        int color = 0;

        switch(hexString[i]) {
                case 'A':
                    color += 160;
                    break;

                case 'B':
                    color += 176;
                    break;

                case 'C':
                    color += 192;
                    break;

                case 'D':
                    color += 208;
                    break;

                case 'E':
                    color += 224;
                    break;

                case 'F':
                    color += 240;
                    break;

                default:
                    color += ((int)hexString[i] - 48) * 16;
                    break;
        }

        switch(hexString[i+1]) {
                case 'A':
                    color += 10;
                    break;

                case 'B':
                    color += 11;
                    break;

                case 'C':
                    color += 12;
                    break;

                case 'D':
                    color += 13;
                    break;

                case 'E':
                    color += 14;
                    break;

                case 'F':
                    color += 15;
                    break;

                default:
                    color += ((int)hexString[i+1] - 48);
                    break;
            }

        output += std::to_string(color);
        color = 0;

        if(i < 4) {
            output += ",";
        }
    }

    std::cout << output << std::endl;

    outputVarable = QString::fromStdString(output);

}

void Converter::convertToHEX(QString rgb) { // Funkcja która konwertuje HEX do RGB

    std::string output;

    QStringList components = rgb.split(",");

    for(int i = 0; i < 3; i++) {

    int dived = components[i].toInt() / 16;

        switch(dived) {
                case 10:
                    output += 'A';
                    break;

                case 11:
                    output += 'B';
                    break;

                case 12:
                    output += 'C';
                    break;

                case 13:
                    output += 'D';
                    break;

                case 14:
                    output += 'E';
                    break;

                case 15:
                    output += 'F';
                    break;

                default:
                    output += std::to_string(dived);
                    break;
        }

        int times = dived * 16;
        int rest = components[i].toInt() - times;

        switch(rest) {
                case 10:
                    output += 'A';
                    break;

                case 11:
                    output += 'B';
                    break;

                case 12:
                    output += 'C';
                    break;

                case 13:
                    output += 'D';
                    break;

                case 14:
                    output += 'E';
                    break;

                case 15:
                    output += 'F';
                    break;

                default:
                    output += std::to_string(rest);
                    break;
        }

    }

    std::cout << output << std::endl;

    outputVarable = QString::fromStdString(output);

}

QString Converter::returnOutput() { // Funkcja która zraca nam qstringa z kolorem
    return outputVarable;
}
