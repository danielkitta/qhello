
#ifndef QHELLO_HELLO_H_INCLUDED
#define QHELLO_HELLO_H_INCLUDED

#include <QWidget>

class Hello : public QWidget
{
  Q_OBJECT

public:
  explicit Hello(QWidget* parent = 0);
  virtual ~Hello();
};

#endif /* !QHELLO_HELLO_H_INCLUDED */
