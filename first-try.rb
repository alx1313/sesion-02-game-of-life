planet = [
    [0,1,1,0], 
    [0,0,1,1],
    [1,0,0,0],
    [0,1,0,1]]
live_things = 1
analizer_1= 0
analizer_2= 0
analizer_3= 0
analizer_4= 0
for x in 0..3
    for y in 0..3
        if planet[x,y] == 1 && x == 0
            analizer_1 = planet[x+1, y]
            if analizer_1 == 1 && y == 0
                analizer_2 = planet[x,y+1]
                if analizer_2 == 1
                    planet[x,y] = 1
                elsif analizer_2 == 0
                    planet[x,y] == 0
                end
            elsif analizer_1 == 0 && y == 0
                analizer_2 = planet[x,y+1]
                if analizer_2 == 1
                    
                    
        elsif planet[x,y] == 1 && x == 3
        
        else
            
        else
            if analizer_1 == 1
                 analizer_2 = planet[x,y+1]
                 if analizer_2 == 1 && y >= 1
                    analizer_3 = planet[x,y-1]
                    if analizer_3 == 1 && x >= 1
                        analizer_4 = planet[x-1,y]
                        if analizer_4 == 1
                            planet[x,y] = 0
                        elsif analizer_4 == 0
                            planet[x,y] = 1
                        end
                    elsif analizer_3 == 0
                       if analizer_4 == 1
                            planet[x,y] = 0
                       elsif analizer_4 == 0
                            planet[x,y] == 1
                       end
                    end
                end
            end
        elsif planet[x,y] == 0 && x == 0
            analizer_1 = planet[x+1, y]
            if analizer_1 == 1
                analizer_2 = planet[x,y+1]
                if analizer_2 == 1 && y = 1
                    analizer_3 = planet[x,y-1]
                    if analizer_3 == 1
                        planet[x,y] = 1
                    else
                        planet[x,y] = 0

        

