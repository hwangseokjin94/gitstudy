import json



#json -> dict 변환(디코딩)
from textwrap import fill

filein = open('서울특별시_마포구_CCTV_20200520_1591235513709_283380.json','rt',encoding='utf-8')

buffer = filein.read()
# print(type(buffer)) str
bufferJSON = json.loads(buffer)
#print(type(bufferJSON))
#print(bufferJSON)
total_cctv=0
for place in bufferJSON:
    total_cctv += int(place['카메라대수'])

print(total_cctv)
filein.close()
