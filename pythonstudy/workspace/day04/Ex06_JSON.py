#JSON처리는 json모듈을 추가하고 처리한다.
#파이썬의 Dictionary가 JSON에 대응한다.

import json
#파이썬 Dictionary (dict)
car= {
    'model':'bmw 520d',
    'price':7000,
    'manufacturer':{'country':'germany','company':'bmw'},
    'log':[
        {'title':'buy','date':'2020-01-01'},
        {'title':'fix1','date':'2020-06-01'},
        {'title':'fix2','date':'2020-08-01'}
    ]
}

#dict -> JSON으로 변환 (인코딩)_
#strJSON = json.dumps(car)
strJSON = json.dumps(car,indent=4)
print(type(strJSON))
print(strJSON)


#json -> dict 변환(디코딩)
dictJSON = json.loads(strJSON)
print(type(dictJSON))
print(dictJSON)

#dictJSON출력
print('model:{}'.format(dictJSON['model']))
print('price:{}'.format(dictJSON['price']))

# print('manufacturer.country:{}'.format(dictJSON['manufacturer']['country']))
# print('manufacturer.company:{}'.format(dictJSON['manufacturer']['company']))
#위코드를 for문으로 수정

# 1.key만처리
# for item in dictJSON['manufacturer']:
#    print(item)
# 2,key,value 함꼐처리
# for key in dictJSON['manufacturer'].keys():
#         print('{}:{}'.format(key,dictJSON['manufacturer'][key]))
# 3.value만처리
# for value in dictJSON['manufacturer'].values():
#     print(value)

#4. key,value 모두처리

for item in dictJSON['manufacturer'].items():
    print(item) #(key,value) 튜플
    for a in item:
        print(a)



