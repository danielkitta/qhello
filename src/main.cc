/*
 * QHello
 */

#include "hello.h"
#include <QApplication>

int main(int argc, char** argv)
{
  QApplication app (argc, argv);
  Hello widget;
  widget.show();
  return app.exec();
}
