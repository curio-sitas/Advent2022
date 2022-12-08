begin
cd(@__DIR__)

elves = [];
el = 0;


# PART 1

# Populates elves calory stock
for l in readlines("input.txt")
    if(l=="")
        elves = vcat(elves, el)
        el = 0
    else
        el = el + parse(Int, l)
    end
end

# Find the hugest one

nBigElf = argmax(elves)
Qty = elves[nBigElf]

# PART 2
Q3 = 0
for i in 1:3
    id = argmax(elves)
    Q3 = Q3 + elves[id]
    elves[id] = 0
end

answer_1 = Qty
answer_2 = Q3
end
