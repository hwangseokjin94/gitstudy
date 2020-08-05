import cx_Oracle

conn =cx_Oracle.connect('javaweb0224/1111@127.0.0.1:1521/xe')
cursor = conn.cursor()

sql = 'DELETE FROM LECTURE WHERE LEC_ID = :1'

lec_id =int(input('삭제할 강좌번호>>>'))
data = (lec_id,)

cursor.execute(sql,data)

cursor.close()

conn.commit()
conn.close()