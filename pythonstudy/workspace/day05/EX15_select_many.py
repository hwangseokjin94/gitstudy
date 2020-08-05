import cx_Oracle

conn = cx_Oracle.connect('javaweb0224/1111@localhost:1521/xe')
cursor = conn.cursor()

sql = 'SELECT * FROM LECTURE ORDER BY LEC_ID'

cursor.execute(sql)

# result = cursor.fetchmany(2)  # 결과 2개 조회
result = cursor.fetchall()  # 결과 전체 조회

print(type(result))  # 각 결과는 튜플, 전체 결과는 리스트
print(result)

for lecture in result:
    for i in range(len(lecture)):
        if i == 2:  # CLOB
            print(lecture[i].read())
        else:
            print(lecture[i])

cursor.close()
conn.close()
