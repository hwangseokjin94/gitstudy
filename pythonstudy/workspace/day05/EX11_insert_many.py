import cx_Oracle
import datetime as dt
conn = cx_Oracle.connect('javaweb0224/1111@127.0.0.1:1521/xe')
cursor = conn.cursor()

sql = 'INSERT INTO LECTURE VALUES(:1,:2,:3,:4)'

lecture_list=[
    (3,'자바','웹 앱개발',dt.datetime.now()),
    (4,'자바스크립트','동적페이지 개발',dt.date(2020,8,3))
]

# 1.
# for lecture in lecture_list:
#     cursor.execute(sql,lecture)

#2.
cursor.arraysize = len(lecture_list)
cursor.executemany(sql,lecture_list)

cursor.close()

conn.commit()
conn.close()