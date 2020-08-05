# oracle DB
# 1. cx_Oracle 모듈을  import 한다.
# 2. cx_Oracle 모듈을 추가로 설치해야한다.
# 3. cx_Oracle 설치 방법
# Terminal 에서 pip install cx_Oracle

import cx_Oracle

conn = cx_Oracle.connect('javaweb0224/1111@127.0.0.1:1521/xe')
cursor = conn.cursor()

sql = '''CREATE TABLE LECTURE (
LEC_ID NUMBER PRIMARY KEY,
LEC_NAME VARCHAR2(20),
LEC_DESCRIPTION CLOB,
LEC_DATE DATE)'''

cursor.execute(sql)

cursor.close()
conn.close()