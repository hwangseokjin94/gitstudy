import cx_Oracle

conn = cx_Oracle.connect('javaweb0224/1111@localhost:1521/xe')
cursor = conn.cursor()

sql = 'SELECT * FROM LECTURE WHERE LEC_ID = :1'

lec_id = int(input('조회할 강좌번호 >>> '))
data = (lec_id, )

cursor.execute(sql, data)

result = cursor.fetchone()  # fetchone() : 조회결과에서 1개만 가져온다.

print(type(result))  # <class 'tuple'>
print(result)

print('강좌번호:', result[0])
print('강좌이름:', result[1])
print('강좌설명:', result[2].read())  # CLOB 타입은 read() 메소드로 처리
print('강좌일시:', result[3])  # Oracle SYSDATE 는 파이썬의 datetime 으로 처리
print('강좌날짜:', result[3].date())
print('강좌날짜:', result[3].time())

cursor.close()
conn.close()
