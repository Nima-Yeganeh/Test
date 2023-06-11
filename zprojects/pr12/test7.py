from decimal import Decimal

start_num = Decimal("1000000000000000000000000000000000000000")
end_num = Decimal("9999999999999999999999999999999999999999")

current_num = start_num

while current_num <= end_num:
    print(current_num)
    print((current_num/end_num)*100)
    current_num += 1
