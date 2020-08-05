import cx_Oracle

conn = cx_Oracle.connect('javaweb0224/1111@localhost:1521/xe')
cursor = conn.cursor()

sql = 'UPDATE LECTURE SET LEC_NAME = :1, LEC_DESCRIPTION = :2 WHERE LEC_ID = :3'

lec_id = int(input('변경할 강좌 번호 >>> '))
lec_name = input('변경할 강좌 이름 >>> ')
lec_description = input('변경할 강좌 설명 >>> ')
data = (lec_name, lec_description, lec_id)

cursor.execute(sql, data)

cursor.close()

conn.commit()
conn.close()
