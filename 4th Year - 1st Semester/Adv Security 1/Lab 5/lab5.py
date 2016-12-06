from RandomnessTests import RandomnessTester

m = 11 * 19
x = 9

def rng():
    global x
    x = (x * x) % m
    return x

for i in range(12):
    print (rng())

bitstr = ''
for i in range(120):
    bitstr += bin(rng())[-1:]

rng_tester = RandomnessTester(None)
p_value = rng_tester.monobit(bitstr)
print(bitstr)
