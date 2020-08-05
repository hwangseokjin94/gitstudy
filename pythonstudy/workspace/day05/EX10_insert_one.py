import cx_Oracle

conn = cx_Oracle.connect('javaweb0224/1111@127.0.0.1:1521/xe')
cursor = conn.cursor()

sql = 'INSERT INTO LECTURE VALUES(:1 ,:2, :3, SYSDATE)'

# sql 문에 변수 전달은 튜플을 이용한다.
lec_name = input('강좌이름 >>>')
lec_description = input('강좌 설명 >>>')
lecture = (1,lec_name,lec_description)

# 튜플사용시 주의사항
# lecture = (1) # 이건 튜플이아니다.
# lecture = (1,) #이게 튜플이다.


# 실행
cursor.execute(sql,lecture)
cursor.close()

conn.commit()
conn.close()
