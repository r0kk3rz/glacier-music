#ifndef DBADAPTER_H
#define DBADAPTER_H

#include <QObject>
#include <QtSql>
#include <QSqlQueryModel>

class dbAdapter : public QObject
{
    Q_OBJECT
public:
    explicit dbAdapter(QObject *parent = 0);
    ~dbAdapter();

    static dbAdapter& instance();
    QSqlDatabase db;

    QSqlQueryModel *getTable(QString table);

signals:
    void baseCreate();

public slots:

private:
    QSqlQuery query;
    QMutex lock;
    void initDB();
};

#endif // DBADAPTER_H
