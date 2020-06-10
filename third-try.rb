planet = [
    [1,0,0,1],
    [1,0,1,0],
    [0,1,1,0],
    [0,1,1,0]
]

life_up = 0
life_down = 0
life_left = 0
life_right= 0

selector = planet[0][0]
for i in 0..4
    for o in 0..4
        if i == 0
            if o == 0
                life_right = planet[i+1][o]
                life_down = planet[i][o+1]
                if life_right + life_down == 2
                    planet[i][o] = 1
                    puts planet[i][o]

                else
                    planet[i][o] = 0
                    puts planet[2][2]
                end
            elsif o > 0 && o < 3
                life_down =
            end
        end
    end
end