class Cube < Face
      def initialize(front, back, top, bottom, left, right) 
        @front = front
        @back = back
        @top = top
        @bottom = bottom
        @left = left
        @right = right
      end
      
      def frontclock
        @front.turnclock 
        aux1, aux2, aux3 = [], [], []
        aux1 = @top.getbottom
        aux2 = @right.getlefti
        aux3 = @bottom.gettop     
        @top.setbottom(@left.getrighti) 
        @right.setleft(aux1)
        @bottom.settop(aux2)            
        @left.setright(aux3)  
      end
      
      def frontclock180 
        frontclock
        frontclock
      end

      def fronticlock
        frontclock
        frontclock
        frontclock
      end
    
      def rightclock
        @right.turnclock
        aux1, aux2, aux3 = [], [], []
        aux1 = @top.getrighti
        aux2 = @back.getrighti
        aux3 = @bottom.getright
        @top.setright(@front.getright)
        @back.setright(aux1)
        @bottom.setright(aux2)
        @front.setright(aux3)
      end
      
      def rightclock180
        rightclock
        rightclock
      end
      
      def righticlock
        rightclock
        rightclock
        rightclock
      end
      
      def leftclock
        @left.turnclock
        aux1, aux2, aux3 = [], [] ,[]
        aux1 = @top.getleft
        aux2 = @front.getleft
        aux3 = @bottom.getlefti #i
        @top.setleft(@back.getlefti)#i
        @front.setleft(aux1)
        @bottom.setleft(aux2)
        @back.setleft(aux3)
      end
      
      def leftclock180
        leftclock
        leftclock
      end
 
      def lefticlock
          leftclock
          leftclock
          leftclock
      end

      def bottomiclock
       @bottom.turniclock
        aux1, aux2, aux3 = [], [] ,[]
        aux1 = @right.getbottom
        aux2 = @front.getbottom
        aux3 = @left.getbottomi
        @right.setbottom(@back.getbottomi)
        @front.setbottom(aux1)
        @left.setbottom(aux2)
        @back.setbottom(aux3)        
      end
      
      def bottomclock180
        bottomiclock
        bottomiclock
      end

      def bottomclock
        bottomiclock
        bottomiclock
        bottomiclock
      end

      def backiclock
       @back.turnclock
        aux1, aux2, aux3 = [], [] ,[]
        aux1 = @top.gettop
        aux2 = @right.getrighti
        aux3 = @bottom.getbottom
        @top.settop(@left.getlefti)
        @right.setright(aux1)
        @bottom.setbottom(aux2)
        @left.setleft(aux3)
      end

      def backclock180
        backiclock
        backiclock
      end

      def backclock
        backiclock
        backiclock
        backiclock
      end
     
      def topclock 
        @top.turnclock
        aux1, aux2, aux3 = [], [] ,[]
        aux1 = @right.gettop
        aux2 = @front.gettop
        aux3 = @left.gettopi
        @right.settop(@back.gettopi)
        @front.settop(aux1)
        @left.settop(aux2)
        @back.settop(aux3)
      end 
      
      def topclock180
        topclock
        topclock
      end
      
      def topiclock
        topclock
        topclock
        topclock
      end
    
      def exibir_cubo
        matriz_front = @front.getface
        matriz_left = @left.getface
        matriz_right = @right.getface
        matriz_top = @top.getface
        matriz_back = @back.getface
        matriz_bottom = @bottom.getface
        #O flatten transforma todas as arrays entranhadas em uma unica  
        #O campact remove todos os malditos nils.
        #Então o each_slide transforma a nova array(1d) em uma 3x3
        #Não é necessário fazer isso para versões mais novas do ruby
        t = matriz_top.flatten.compact      #top
        top = t.each_slice( 3 ).to_a        
        puts "Top" + top.to_s 
        puts
      
        bot = matriz_bottom.flatten.compact    #bottom
        bottom = bot.each_slice( 3 ).to_a        
        puts "Bottom" + bottom.to_s 
        puts
        
        l = matriz_left.flatten.compact     #left
        left = l.each_slice( 3 ).to_a
        puts "Left" + left.to_s
        puts

        r = matriz_right.flatten.compact    #right
        right = r.each_slice( 3 ).to_a
        puts "Right" + right.to_s
        puts
        
        f = matriz_front.flatten.compact    #front
        front = f.each_slice( 3 ).to_a
         puts "Front" + front.to_s
        puts
        
        b = matriz_back.flatten.compact     #back
        back = b.each_slice( 3 ).to_a
        puts "Back" + back.to_s

        puts

        print "        "
        puts top[0][0].to_s + " " + top[0][1].to_s + " " + top[0][2].to_s
        print "        "
        puts top[1][0].to_s + " " + top[1][1].to_s + " " + top[1][2].to_s
        print "        "
        puts top[2][0].to_s + " " + top[2][1].to_s + " " + top[2][2].to_s

        puts left[0][0].to_s + " " + left[0][1].to_s + " " + left[0][2].to_s + "   " + front[0][0].to_s + " " + front[0][1].to_s + " " + front[0][2].to_s + "   " + right[0][0].to_s + " " + right[0][1].to_s + " " + right[0][2].to_s + "   " + back[0][2].to_s + " " + back[0][1].to_s + " " + back[0][0].to_s
        puts left[1][0].to_s + " " + left[1][1].to_s + " " + left[1][2].to_s + "   " + front[1][0].to_s + " " + front[1][1].to_s + " " + front[1][2].to_s + "   " + right[1][0].to_s + " " + right[1][1].to_s + " " + right[1][2].to_s + "   " + back[1][2].to_s + " " + back[1][1].to_s + " " + back[1][0].to_s
        puts left[2][0].to_s + " " + left[2][1].to_s + " " + left[2][2].to_s + "   " + front[2][0].to_s + " " + front[2][1].to_s + " " + front[2][2].to_s + "   " + right[2][0].to_s + " " + right[2][1].to_s + " " + right[2][2].to_s + "   " + back[2][2].to_s + " " + back[2][1].to_s + " " + back[2][0].to_s

      print "        "
      puts bottom[0][0].to_s + " " + bottom[0][1].to_s + " " + bottom[0][2].to_s
      print "        "
      puts bottom[1][0].to_s + " " + bottom[1][1].to_s + " " + bottom[1][2].to_s
      print "        "
      puts bottom[2][0].to_s + " " + bottom[2][1].to_s + " " + bottom[2][2].to_s
      
    end
    
      #PRIMEIRA CAMADA
      #(1,3)
        def umtres
        puts "============== PRIMEIRA CAMADA =============="  
        puts "============== Alinhando 1 e 3 =============="
        matriz_front = @front.getface
        matriz_left = @left.getface
        matriz_right = @right.getface
        matriz_top = @top.getface
        matriz_back = @back.getface
        matriz_bottom = @bottom.getface
        t = matriz_top.flatten.compact      #top
        top = t.each_slice( 3 ).to_a        

        bot = matriz_bottom.flatten.compact    #bottom
        bottom = bot.each_slice( 3 ).to_a        
        
        l = matriz_left.flatten.compact     #left
        left = l.each_slice( 3 ).to_a

        r = matriz_right.flatten.compact    #right
        right = r.each_slice( 3 ).to_a
        
        f = matriz_front.flatten.compact    #front
        front = f.each_slice( 3 ).to_a
        
        b = matriz_back.flatten.compact     #back
        back = b.each_slice( 3 ).to_a

        if (bottom[1][2] == 1 && right[2][1] == 3) 
            bottomiclock
        elsif(bottom[2][1] == 1 && back[2][1] == 3) 
            bottomclock180
        elsif(bottom[1][0] == 1 && left[2][1] == 3) 
            bottomclock
        elsif(front[2][1] == 1 && bottom[0][1] == 3) 
            fronticlock
            righticlock
            bottomiclock
        elsif(front[1][2] == 1 && right[1][0] == 3) 
            righticlock
            bottomiclock
        elsif(front[0][1] == 1 && top[2][1] == 3) 
            topclock
            leftclock
            fronticlock
        elsif(front[1][0] == 1 && left[1][2] == 3) 
            leftclock
            bottomclock
        elsif(left[1][2] == 1 && front[1][0] == 3) 
            fronticlock
        elsif(left[2][1] == 1 && bottom[1][0] == 3) 
            lefticlock
            fronticlock
        elsif(left[0][1] == 1 && top[1][0] == 3) 
            leftclock
            fronticlock  
        elsif(left[1][0] == 1 && back[1][0] == 3) 
            leftclock180
            fronticlock
        elsif(right[1][0] == 1 && front[1][2] == 3) 
            frontclock 
        elsif(right[2][1] == 1 && bottom[1][2] == 3) 
            rightclock
            frontclock
        elsif(right[1][2] == 1 && back[1][2] == 3) ##aqui
            rightclock180
            frontclock   
        elsif(right[0][1] == 1 && top[1][2] == 3) 
            righticlock
            frontclock
        elsif(top[2][1] == 1 && front[0][1] == 3) 
            frontclock180
        elsif(top[1][0] == 1 && left[0][1] == 3) 
            topiclock
            frontclock180
        elsif(top[1][2] == 1 && right[0][1] == 3) 
            topclock
            frontclock180
        elsif(top[0][1] == 1 && back[0][1] == 3) 
            topclock180
            frontclock180
        elsif(back[0][1] == 1 && top[0][1] == 3) 
            topiclock
            leftclock
            fronticlock
        elsif(back[1][0] == 1 && left[1][0] == 3) 
            lefticlock
            bottomclock
        elsif(back[1][2] == 1 && right[1][2] == 3) 
            rightclock
            bottomiclock
        elsif(back[2][1] == 1 && bottom[2][1] == 3) 
            backiclock
            lefticlock
            bottomclock
        end
          exibir_cubo
        end  

      #(1,6)      
      def umseis  
        puts "============== PRIMEIRA CAMADA =============="  
        puts "============== Alinhando 1 e 6 =============="
        matriz_front = @front.getface
        matriz_left = @left.getface
        matriz_right = @right.getface
        matriz_top = @top.getface
        matriz_back = @back.getface
        matriz_bottom = @bottom.getface
        t = matriz_top.flatten.compact      #top
        top = t.each_slice( 3 ).to_a        
      
        bot = matriz_bottom.flatten.compact    #bottom
        bottom = bot.each_slice( 3 ).to_a        
 
        l = matriz_left.flatten.compact     #left
        left = l.each_slice( 3 ).to_a

        r = matriz_right.flatten.compact    #right
        right = r.each_slice( 3 ).to_a
        
        f = matriz_front.flatten.compact    #front
        front = f.each_slice( 3 ).to_a
        
        b = matriz_back.flatten.compact     #back
        back = b.each_slice( 3 ).to_a
        if (bottom[2][1] == 1 && back[2][1] == 6) 
            backclock180
            topiclock
            leftclock180  
        elsif(bottom[1][2] == 1 && right[2][1] == 6) 
            rightclock180
            topclock180
            leftclock180
        elsif(left[2][1] == 1 && bottom[1][0] == 6) 
            leftclock180
            topclock
            backclock
            lefticlock
        elsif(left[1][2] == 1 && front[1][0] == 6) 
            lefticlock
            topclock
            backclock
            lefticlock   
        elsif(left[0][1] == 1 && top[1][0] == 6) 
            topclock
            backclock
            lefticlock
        elsif(left[1][0] == 1 && back[1][0] == 6) 
            leftclock
            topclock
            backclock
            lefticlock   
        elsif(right[1][0] == 1 && front[1][2] == 6) 
            rightclock180
            backclock
            topiclock
            leftclock180 
        elsif(right[0][1] == 1 && top[1][2] == 6) 
            rightclock
            backclock
            topiclock
            leftclock180        
        elsif(right[1][2] == 1 && back[1][2] == 6) 
            backclock
            topiclock
            leftclock180
        elsif(right[2][1] == 1 && bottom[1][2] == 6) 
            righticlock
            backclock
            topiclock
            leftclock180   
        elsif(front[1][0] == 1 && left[1][2] == 6) #aqui
            leftclock 
        elsif(front[0][1] == 1 && top[2][1] == 6) 
            topclock180
            backclock
            lefticlock     
        elsif(front[1][2] == 1 && right[1][0] == 6) 
            rightclock
            topclock180
            leftclock180   
        elsif(top[2][1] == 1 && front[0][1] == 6) 
            topclock
            leftclock180
        elsif(top[1][0] == 1 && left[0][1] == 6) 
            leftclock180
        elsif(top[0][1] == 1 && back[0][1] == 6) 
            topiclock
            leftclock180
        elsif(top[1][2] == 1 && right[0][1] == 6) 
            topclock180
            leftclock180
        elsif(back[2][1] == 1 && bottom[2][1] == 6) 
            backiclock
            lefticlock
        elsif(back[1][0] == 1 && left[1][0] == 6) 
            lefticlock
        elsif(back[1][2] == 1 && right[1][2] == 6) 
            backclock180
            lefticlock
        elsif(back[0][1] == 1 && top[0][1] == 6) 
            backclock
            lefticlock
        end
          exibir_cubo
        end   
        
      #(1,5)
      def umcinco
        puts "============== PRIMEIRA CAMADA =============="  
        puts "============== Alinhando 1 e 5 =============="
        matriz_front = @front.getface
        matriz_left = @left.getface
        matriz_right = @right.getface
        matriz_top = @top.getface
        matriz_back = @back.getface
        matriz_bottom = @bottom.getface
        t = matriz_top.flatten.compact      #top
        top = t.each_slice( 3 ).to_a        
      
        bot = matriz_bottom.flatten.compact    #bottom
        bottom = bot.each_slice( 3 ).to_a        
 
        l = matriz_left.flatten.compact     #left
        left = l.each_slice( 3 ).to_a

        r = matriz_right.flatten.compact    #right
        right = r.each_slice( 3 ).to_a
        
        f = matriz_front.flatten.compact    #front
        front = f.each_slice( 3 ).to_a
        
        b = matriz_back.flatten.compact     #back
        back = b.each_slice( 3 ).to_a
        if (bottom[1][2] == 1 && right[2][1] == 5) 
            rightclock180
            topiclock
            backclock180
        elsif(left[1][0] == 1 && back[1][0] == 5) 
            backclock
        elsif(left[1][2] == 1 && front[1][0] == 5) 
            lefticlock
            topclock180
            leftclock
            rightclock
            backiclock
        elsif(left[0][1] == 1 && top[1][0] == 5) 
            topclock180
            rightclock
            backiclock
        elsif(right[1][0] == 1 && front[1][2] == 5) 
            rightclock180
            backiclock
        elsif(right[0][1] == 1 && top[1][2] == 5) 
            rightclock
            backiclock
        elsif(right[1][2] == 1 && back[1][2] == 5) 
            backiclock
        elsif(right[2][1] == 1 && bottom[1][2] == 5) 
            righticlock
            backiclock
        elsif(front[1][0] == 1 && left[1][2] == 5) 
            lefticlock
            topiclock
            leftclock
            topclock180
            backclock180
        elsif(front[1][2] == 1 && right[1][0] == 5) 
            rightclock
            topiclock
            backclock180
        elsif(front[0][1] == 1 && top[2][1] == 5) 
            topiclock
            rightclock
            backiclock
        elsif(top[2][1] == 1 && front[0][1] == 5) 
            topclock180
            backclock180
        elsif(top[1][0] == 1 && left[0][1] == 5) 
            topclock
            backclock180
        elsif(top[1][2] == 1 && right[0][1] == 5) 
            topiclock
            backclock180
        elsif(top[0][1] == 1 && back[0][1] == 5) 
            backclock180
        elsif(back[0][1] == 1 && top[0][1] == 5) 
            topclock
            rightclock
            backiclock
        elsif(back[1][0] == 1 && left[1][0] == 5) 
            backiclock
            topclock
            rightclock
            backiclock
        elsif(back[1][2] == 1 && right[1][2] == 5) 
            backclock
            topclock
            rightclock
            backiclock
        elsif(back[2][1] == 1 && bottom[2][1] == 5) 
            backclock180
            topclock
            rightclock
            backiclock
        end
        exibir_cubo  
        end  
      
        #(1,4) 
        def umquatro
            puts "============== PRIMEIRA CAMADA =============="  
            puts "============== Alinhando 1 e 4 =============="
            matriz_front = @front.getface
            matriz_left = @left.getface
            matriz_right = @right.getface
            matriz_top = @top.getface
            matriz_back = @back.getface
            matriz_bottom = @bottom.getface
            t = matriz_top.flatten.compact      #top
            top = t.each_slice( 3 ).to_a        
          
            bot = matriz_bottom.flatten.compact    #bottom
            bottom = bot.each_slice( 3 ).to_a        
     
            l = matriz_left.flatten.compact     #left
            left = l.each_slice( 3 ).to_a
    
            r = matriz_right.flatten.compact    #right
            right = r.each_slice( 3 ).to_a
            
            f = matriz_front.flatten.compact    #front
            front = f.each_slice( 3 ).to_a
            
            b = matriz_back.flatten.compact     #back
            back = b.each_slice( 3 ).to_a
            if (right[2][1] == 1 && bottom[1][2] == 4) 
                backiclock
                righticlock
                backclock
                topclock
                rightclock180
            elsif(right[1][0] == 1 && front[1][2] == 4) 
                backiclock
                rightclock180
                backclock
                topclock
                rightclock180
            elsif(right[0][1] == 1 && top[1][2] == 4) 
                backiclock
                rightclock
                backclock
                topclock
                rightclock180
            elsif(right[1][2] == 1 && back[1][2] == 4) 
                backclock
                topclock
                backiclock
                rightclock180
            elsif(front[1][0] == 1 && left[1][2] == 4) 
                lefticlock
                topclock180
                leftclock
                rightclock180
            elsif(front[1][2] == 1 && right[1][0] == 4) 
                righticlock
            elsif(front[0][1] == 1 && top[2][1] == 4) 
                frontclock
                righticlock
                fronticlock
            elsif(left[0][1] == 1 && top[1][0] == 4) 
                fronticlock
                topiclock
                frontclock
                righticlock
            elsif(left[1][2] == 1 && front[1][0] == 4) 
                frontclock
                topiclock
                rightclock180
                fronticlock
            elsif(left[1][0] == 1 && back[1][0] == 4) 
                backiclock
                topclock
                rightclock180
                backclock
            elsif(top[2][1] == 1 && front[0][1] == 4) 
                topiclock
                rightclock180
            elsif(top[1][2] == 1 && right[0][1] == 4) 
                rightclock180
            elsif(top[1][0] == 1 && left[0][1] == 4) 
                topclock180
                rightclock180
            elsif(top[0][1] == 1 && back[0][1] == 4) 
                topclock
                rightclock180
            elsif(back[1][2] == 1 && right[1][2] == 4) 
                rightclock
            elsif(back[1][0] == 1 && left[1][0] == 4) 
                leftclock
                topclock180
                rightclock180
                lefticlock
            elsif(back[0][1] == 1 && top[0][1] == 4) 
                backiclock
                rightclock
                backclock
            end
             exibir_cubo
            end        
      
        #FINALIZANDO PRIMEIRA CAMADA
        #(1,3,4) 
         def umtresquatro
            puts "============== PRIMEIRA CAMADA =============="  
            puts "============== Alinhando 1,3,4 =============="
            matriz_front = @front.getface
            matriz_left = @left.getface
            matriz_right = @right.getface
            matriz_top = @top.getface
            matriz_back = @back.getface
            matriz_bottom = @bottom.getface
            t = matriz_top.flatten.compact      #top
            top = t.each_slice( 3 ).to_a        
          
            bot = matriz_bottom.flatten.compact    #bottom
            bottom = bot.each_slice( 3 ).to_a        
     
            l = matriz_left.flatten.compact     #left
            left = l.each_slice( 3 ).to_a
    
            r = matriz_right.flatten.compact    #right
            right = r.each_slice( 3 ).to_a
            
            f = matriz_front.flatten.compact    #front
            front = f.each_slice( 3 ).to_a
            
            b = matriz_back.flatten.compact     #back
            back = b.each_slice( 3 ).to_a        
        if (bottom[0][0] == 1 && front[2][0] == 4 && left[2][2] == 3) 
            lefticlock
            topiclock
            leftclock
            rightclock
            topclock
            righticlock
        elsif(bottom[2][0] == 1 && left[2][0] == 4 && back[2][0] == 3) 
            backiclock
            topclock180
            backclock
            rightclock
            topclock
            righticlock
        elsif(bottom[2][2] == 1 && right[2][2] == 3 && back[2][2] == 4) 
            backclock
            topclock180
            backiclock
            rightclock
            topiclock
            righticlock
        elsif(front[2][2] == 1 && bottom[0][2] == 4 && right[2][0] == 3) 
            rightclock
            topiclock
            righticlock
            topclock
            rightclock
            topiclock
            righticlock
        elsif(front[2][0] == 1 && bottom[0][0] == 3 && left[2][2] == 4) 
            lefticlock
            topclock
            leftclock
            topiclock
            rightclock
            topclock
            righticlock
        elsif(front[0][2] == 1 && top[2][2] == 3 && right[0][0] == 4) 
            topclock
            rightclock
            topiclock
            righticlock
        elsif(front[0][0] == 1 && top[2][0] == 4 && left[0][2] == 3) 
            topiclock
            rightclock
            topclock
            righticlock
        elsif(left[2][2] == 1 && front[2][0] == 3 && bottom[0][0] == 4) 
            lefticlock
            rightclock
            topiclock
            leftclock
            righticlock
        elsif(left[0][2] == 1 && front[0][0] == 4 && top[2][0] == 3) 
            rightclock
            topiclock
            righticlock
        elsif(left[0][0] == 1 && top[0][0] == 4 && back[0][0] == 3) 
            topclock180
            rightclock
            topclock
            righticlock
        elsif(left[2][0] == 1 && bottom[2][0] == 3 && back[2][0] == 4) 
            backiclock
            topclock
            backclock
            topclock180
            rightclock
            topclock
            righticlock
        elsif(right[2][0] == 1 && front[2][2] == 4 && bottom[0][2] == 3) 
            rightclock
            topclock
            righticlock
            topiclock
            rightclock
            topclock
            righticlock
        elsif(right[0][0] == 1 && front[0][2] == 3 && top[2][2] == 4) 
            rightclock
            topclock
            righticlock
        elsif(right[0][2] == 1 && top[0][2] == 3 && back[0][2] == 4) 
            topclock180
            rightclock
            topiclock
            righticlock
        elsif(right[2][2] == 1 && bottom[2][2] == 4 && back[2][2] == 3) 
            backclock
            topiclock
            backiclock
            topclock180
            rightclock
            topiclock
            righticlock
        elsif(top[2][2] == 1 && front[0][2] == 4 && right[0][0] == 3) 
            rightclock
            topclock180
            righticlock
            topiclock
            rightclock
            topclock
            righticlock
        elsif(top[2][0] == 1 && front[0][0] == 3 && left[0][2] == 4) 
            topiclock
            rightclock
            topclock180
            righticlock
            topiclock
            rightclock
            topclock
            righticlock
        elsif(top[0][2] == 1 && right[0][2] == 4 && back[0][2] == 3) 
            topclock
            rightclock
            topclock180
            righticlock
            topiclock
            rightclock
            topclock
            righticlock
        elsif(top[0][0] == 1 && left[0][0] == 3 && back[0][0] == 4) 
            topclock180
            rightclock
            topclock180
            righticlock
            topiclock
            rightclock
            topclock
            righticlock
        elsif(back[0][0] == 1 && left[0][0] == 4 && top[0][0] == 3) 
            rightclock
            topclock180
            righticlock
        elsif(back[0][2] == 1 && right[0][2] == 3 && top[0][2] == 4) 
            topclock
            rightclock
            topclock
            righticlock
        elsif(back[2][2] == 1 && bottom[2][2] == 3 && right[2][2] == 4) 
            backclock
            topclock
            backiclock
            rightclock
            topclock
            righticlock
        elsif(back[2][0] == 1 && left[2][0] == 3 && bottom[2][0] == 4) 
            backiclock
            topiclock
            backclock
            rightclock
            topiclock
            righticlock
        end
        exibir_cubo
      end  
      
        #(1,3,6)
        def umtresseis
            puts "============== PRIMEIRA CAMADA =============="  
            puts "============== Alinhando 1,3,6 =============="
            matriz_front = @front.getface
            matriz_left = @left.getface
            matriz_right = @right.getface
            matriz_top = @top.getface
            matriz_back = @back.getface
            matriz_bottom = @bottom.getface
            t = matriz_top.flatten.compact      #top
            top = t.each_slice( 3 ).to_a        
          
            bot = matriz_bottom.flatten.compact    #bottom
            bottom = bot.each_slice( 3 ).to_a        
     
            l = matriz_left.flatten.compact     #left
            left = l.each_slice( 3 ).to_a
    
            r = matriz_right.flatten.compact    #right
            right = r.each_slice( 3 ).to_a
            
            f = matriz_front.flatten.compact    #front
            front = f.each_slice( 3 ).to_a
            
            b = matriz_back.flatten.compact     #back
            back = b.each_slice( 3 ).to_a
            
        if (bottom[2][0] == 1 && left[2][0] == 3 && back[2][0] == 6) 
            backiclock
            topclock180
            backclock
            lefticlock
            topclock
            leftclock
        elsif(bottom[2][2] == 1 && right[2][2] == 6 && back[2][2] == 3) 
            backclock
            topclock180
            backiclock
            lefticlock
            topiclock
            leftclock
        elsif(front[2][0] == 1 && bottom[0][0] == 6 && left[2][2] == 3) 
            lefticlock
            topclock
            leftclock
            topiclock
            lefticlock
            topclock
            leftclock
        elsif(front[0][0] == 1 && top[2][0] == 3 && left[0][2] == 6) 
            topiclock
            lefticlock
            topclock
            leftclock
        elsif(front[0][2] == 1 && top[2][2] == 6 && right[0][0] == 3) 
            topclock
            lefticlock
            topiclock
            leftclock
        elsif(left[2][2] == 1 && front[2][0] == 6 && bottom[0][0] == 3) 
            lefticlock
            topiclock
            leftclock
            topclock
            lefticlock
            topiclock
            leftclock
        elsif(left[2][0] == 1 && back[2][0] == 3 && bottom[2][0] == 6) 
            backiclock
            topclock
            backclock
            topclock180
            lefticlock
            topclock
            leftclock
        elsif(left[0][2] == 1 && front[0][0] == 3 && top[2][0] == 6) 
            lefticlock
            topiclock
            leftclock
        elsif(left[0][0] == 1 && top[0][0] == 3 && back[0][0] == 6) 
            topclock180
            lefticlock
            topclock
            leftclock
        elsif(right[0][0] == 1 && front[0][2] == 6 && top[2][2] == 3) 
            lefticlock
            topclock
            leftclock
        elsif(right[0][2] == 1 && top[0][2] == 6 && back[0][2] == 3) 
            topclock180
            lefticlock
            topiclock
            leftclock
        elsif(right[2][2] == 1 && bottom[2][2] == 3 && back[2][2] == 6) 
            backclock
            topiclock
            backiclock
            topclock180
            lefticlock
            topiclock
            leftclock
        elsif(top[2][0] == 1 && front[0][0] == 6 && left[0][2] == 3) 
            lefticlock
            topclock180
            leftclock
            topclock
            lefticlock
            topiclock
            leftclock
        elsif(top[2][2] == 1 && front[0][2] == 3 && right[0][0] == 6) 
            lefticlock
            topclock180
            leftclock
            topiclock
            lefticlock
            topclock
            leftclock
        elsif(top[0][2] == 1 && right[0][2] == 3 && back[0][2] == 6) 
            lefticlock
            topiclock
            leftclock
            topiclock
            lefticlock
            topclock
            leftclock
        elsif(top[0][0] == 1 && left[0][0] == 6 && back[0][0] == 3) 
            topiclock
            lefticlock
            topclock180
            leftclock
            topclock
            lefticlock
            topiclock
            leftclock
        elsif(back[0][0] == 1 && left[0][0] == 3 && top[0][0] == 6) 
            topiclock
            lefticlock
            topiclock
            leftclock
        elsif(back[0][2] == 1 && top[0][2] == 3 && right[0][2] == 6) 
            lefticlock
            topclock180
            leftclock
        elsif(back[2][0] == 1 && bottom[2][0] == 3 && left[2][0] == 6) 
            backiclock
            topiclock
            backclock
            lefticlock
            topiclock
            leftclock
        elsif(back[2][2] == 1 && right[2][2] == 3 && bottom[2][2] == 6) 
            backclock
            topclock
            backiclock
            lefticlock
            topclock
            leftclock
        end
        exibir_cubo
      end  
      
    # (1, 6, 5) 
      def umseiscinco
            puts "============== PRIMEIRA CAMADA =============="  
            puts "============== Alinhando 1,6,5 =============="
            matriz_front = @front.getface
            matriz_left = @left.getface
            matriz_right = @right.getface
            matriz_top = @top.getface
            matriz_back = @back.getface
            matriz_bottom = @bottom.getface
            t = matriz_top.flatten.compact      #top
            top = t.each_slice( 3 ).to_a        
          
            bot = matriz_bottom.flatten.compact    #bottom
            bottom = bot.each_slice( 3 ).to_a        
     
            l = matriz_left.flatten.compact     #left
            left = l.each_slice( 3 ).to_a
    
            r = matriz_right.flatten.compact    #right
            right = r.each_slice( 3 ).to_a
            
            f = matriz_front.flatten.compact    #front
            front = f.each_slice( 3 ).to_a
            
            b = matriz_back.flatten.compact     #back
            back = b.each_slice( 3 ).to_a
        if (bottom[2][2] == 1 && right[2][2] == 5 && back[2][2] == 6) 
            backclock
            topiclock
            backiclock
            topclock180
            backiclock
            topclock
            backclock
        elsif(back[2][0] == 1 && bottom[2][0] == 6 && left[2][0] == 5) 
            backiclock
            topiclock
            backclock
            topclock
            backiclock
            topiclock
            backclock
        elsif(back[2][2] == 1 && bottom[2][2] == 5 && right[2][2] == 6) 
            backclock
            topclock
            backclock180
            topclock180
            backclock
        elsif(back[0][0] == 1 && top[0][0] == 5 && left[0][0] == 6) 
            backiclock
            topiclock
            backclock
        elsif(back[0][2] == 1 && top[0][2] == 6 && right[0][2] == 5) 
            topclock180
            backiclock
            topclock
            backclock
        elsif(left[2][0] == 1 && bottom[2][0] == 5 && back[2][0] == 6) 
            backiclock
            topclock
            backclock
            topiclock
            backiclock
            topclock
            backclock
        elsif(left[0][2] == 1 && front[0][0] == 6 && top[2][0] == 5) 
            topclock
            backiclock
            topiclock
            backclock
        elsif(left[0][0] == 1 && top[0][0] == 6 && back[0][0] == 5) 
            topiclock
            backiclock
            topclock
            backclock
        elsif(right[0][0] == 1 && front[0][2] == 5 && top[2][2] == 6) 
            backiclock
            topclock180
            backclock
        elsif(right[0][2] == 1 && top[0][2] == 5 && back[0][2] == 6) 
            topiclock
            backiclock
            topiclock
            backclock
        elsif(right[2][2] == 1 && bottom[2][2] == 6 && back[2][2] == 5) 
            backclock
            topiclock
            backiclock
            topiclock
            backiclock
            topiclock
            backclock
        elsif(front[0][0] == 1 && top[2][0] == 6 && left[0][2] == 5) 
            backiclock
            topclock
            backclock
        elsif(front[0][2] == 1 && top[2][2] == 5 && right[0][0] == 6) 
            topclock180
            backiclock
            topiclock
            backclock
        elsif(top[2][0] == 1 && front[0][0] == 5 && left[0][2] == 6) 
            topclock
            backiclock
            topclock180
            backclock
            topclock
            backiclock
            topiclock
            backclock
        elsif(top[2][2] == 1 && front[0][2] == 6 && right[0][0] == 5) 
            topclock180
            backiclock
            topclock180
            backclock
            topclock
            backiclock
            topiclock
            backclock
        elsif(top[0][0] == 1 && left[0][0] == 5 && back[0][0] == 6) 
            backiclock
            topclock180
            backclock
            topclock
            backiclock
            topiclock
            backclock
        elsif(top[0][2] == 1 && right[0][2] == 6 && back[0][2] == 5) 
            topiclock
            backiclock
            topclock180
            backclock
            topclock
            backiclock
            topiclock
            backclock
        end
        exibir_cubo
      end 
      
      #(1, 4, 5)  
      def umquatrocinco
            puts "============== PRIMEIRA CAMADA =============="  
            puts "============== Alinhando 1,4,5 =============="
            matriz_front = @front.getface
            matriz_left = @left.getface
            matriz_right = @right.getface
            matriz_top = @top.getface
            matriz_back = @back.getface
            matriz_bottom = @bottom.getface
            t = matriz_top.flatten.compact      #top
            top = t.each_slice( 3 ).to_a        
          
            bot = matriz_bottom.flatten.compact    #bottom
            bottom = bot.each_slice( 3 ).to_a        
     
            l = matriz_left.flatten.compact     #left
            left = l.each_slice( 3 ).to_a
    
            r = matriz_right.flatten.compact    #right
            right = r.each_slice( 3 ).to_a
            
            f = matriz_front.flatten.compact    #front
            front = f.each_slice( 3 ).to_a
            
            b = matriz_back.flatten.compact     #back
            back = b.each_slice( 3 ).to_a
        if (right[2][2] == 1 && bottom[2][2] == 5 && back[2][2] == 4) 
            backclock
            topiclock
            backiclock
            topclock
            backclock
            topiclock
            backiclock
        elsif(right[0][2] == 1 && top[0][2] == 4 && back[0][2] == 5) 
            topclock
            backclock
            topiclock
            backiclock
        elsif(right[0][0] == 1 && front[0][2] == 4 && top[2][2] == 5) 
            topiclock
            backclock
            topclock
            backiclock
        elsif(left[0][2] == 1 && front[0][0] == 5 && top[2][0] == 4) 
            backclock
            topclock180
            backiclock
        elsif(left[0][0] == 1 && top[0][0] == 5 && back[0][0] == 4) 
            topclock
            backclock
            topclock
            backiclock
        elsif(front[0][0] == 1 && top[2][0] == 5 && left[0][2] == 4) 
            topclock180
            backclock
            topclock
            backiclock
        elsif(front[0][2] == 1 && top[2][2] == 4 && right[0][0] == 5) 
            backclock
            topiclock
            backiclock
        elsif(back[2][2] == 1 && right[2][2] == 5 && bottom[2][2] == 4) 
            backclock
            topclock
            backiclock
            topiclock
            backclock
            topclock
            backiclock
        elsif(back[0][2] == 1 && right[0][2] == 4 && top[0][2] == 5) 
            backclock
            topclock
            backiclock
        elsif(back[0][0] == 1 && top[0][0] == 4 && left[0][0] == 5) 
            topclock180
            backclock
            topiclock
            backiclock
        elsif(top[0][0] == 1 && back[0][0] == 5 && left[0][0] == 4) 
            topclock
            backclock
            topclock180
            backiclock
            topiclock
            backclock
            topclock
            backiclock
        elsif(top[0][2] == 1 && back[0][2] == 4 && right[0][2] == 5) 
            backclock
            topclock180
            backiclock
            topiclock
            backclock
            topclock
            backiclock
        elsif(top[2][0] == 1 && front[0][0] == 4 && left[0][2] == 5) 
            topclock180
            backclock
            topclock180
            backiclock
            topiclock
            backclock
            topclock
            backiclock
        elsif(top[2][2] == 1 && front[0][2] == 5 && right[0][0] == 4) 
            topiclock
            backclock
            topclock180
            backiclock
            topiclock
            backclock
            topclock
            backiclock
        end
        exibir_cubo
    end  
      
    #SEGUNDA CAMADA
    #(3, 4)
    def tresquatro
            puts "============== SEGUNDA CAMADA =============="  
            puts "============== Alinhando 3,4 ==============="
            matriz_front = @front.getface
            matriz_left = @left.getface
            matriz_right = @right.getface
            matriz_top = @top.getface
            matriz_back = @back.getface
            matriz_bottom = @bottom.getface
            t = matriz_top.flatten.compact      #top
            top = t.each_slice( 3 ).to_a        
          
            bot = matriz_bottom.flatten.compact    #bottom
            bottom = bot.each_slice( 3 ).to_a        
     
            l = matriz_left.flatten.compact     #left
            left = l.each_slice( 3 ).to_a
    
            r = matriz_right.flatten.compact    #right
            right = r.each_slice( 3 ).to_a
            
            f = matriz_front.flatten.compact    #front
            front = f.each_slice( 3 ).to_a
            
            b = matriz_back.flatten.compact     #back
            back = b.each_slice( 3 ).to_a
        if (matriz_front[1][0] == 3 && matriz_left[1][2] == 4) 
            lefticlock 
            topclock 
            leftclock 
            fronticlock 
            topclock 
            frontclock 
            topclock 
            rightclock 
            topiclock 
            righticlock 
            lefticlock 
            topiclock 
            leftclock 
        elsif (matriz_front[0][1] == 3 && matriz_top[2][1] == 4) 
            topclock 
            rightclock 
            topiclock 
            righticlock 
            topiclock 
            fronticlock 
            topclock 
            frontclock 
        elsif (matriz_left[1][2] == 3 && matriz_front[1][0] == 4) 
            lefticlock 
            topiclock 
            leftclock 
            topclock 
            rightclock 
            topiclock 
            righticlock 
            topiclock 
            fronticlock 
            topclock 
            frontclock 
            lefticlock 
            topclock 
            leftclock 
        elsif (matriz_left[1][0] == 3 && matriz_back[1][0] == 4) 
            backiclock 
            topiclock 
            backclock 
            topclock 
            fronticlock 
            topclock 
            frontclock 
            topclock 
            rightclock 
            topiclock 
            righticlock 
            backiclock 
            topiclock 
            backclock 
        elsif (matriz_left[0][1] == 3 && matriz_top[1][0] == 4) 
            rightclock 
            topiclock 
            righticlock 
            topiclock 
            fronticlock 
            topclock 
            frontclock 
        elsif (matriz_right[1][0] == 3 && matriz_front[1][2] == 4) 
            rightclock 
            topclock 
            righticlock 
            topclock180 
            rightclock 
            topclock180 
            righticlock 
            topclock 
            fronticlock 
            topiclock 
            frontclock 
        elsif (matriz_right[0][1] == 3 && matriz_top[1][2] == 4) 
            topclock180 
            rightclock 
            topiclock 
            righticlock 
            topiclock 
            fronticlock 
            topclock 
            frontclock 
        elsif (matriz_right[1][2] == 3 && matriz_back[1][2] == 4) 
            backclock 
            topclock 
            backiclock 
            topiclock 
            fronticlock 
            topclock 
            frontclock 
            topclock 
            rightclock 
            topiclock 
            righticlock 
            backclock 
            topiclock 
            backiclock 
        elsif (matriz_back[1][0] == 3 && matriz_left[1][0] == 4) 
            backiclock 
            topiclock 
            backclock 
            rightclock 
            topiclock 
            righticlock 
            topiclock 
            fronticlock 
            topclock 
            frontclock 
            backiclock 
            topclock180 
            backclock 
        elsif (matriz_back[1][2] == 3 && matriz_right[1][2] == 4) 
            backclock 
            topiclock 
            backiclock 
            rightclock 
            topiclock 
            righticlock 
            topiclock 
            fronticlock 
            topclock 
            frontclock 
            backclock 
            topclock 
            backiclock 
        elsif (matriz_back[0][1] == 3 && matriz_top[0][1] == 4) 
            topiclock 
            rightclock 
            topiclock 
            righticlock 
            topiclock 
            fronticlock 
            topclock 
            frontclock 
        elsif (matriz_top[2][1] == 3 && matriz_front[0][1] == 4) 
            topclock180 
            fronticlock 
            topclock 
            frontclock 
            topclock 
            rightclock 
            topiclock 
            righticlock 
        elsif (matriz_top[1][0] == 3 && matriz_left[0][1] == 4) 
            topclock 
            fronticlock 
            topclock 
            frontclock 
            topclock 
            rightclock 
            topiclock 
            righticlock 
        elsif (matriz_top[1][2] == 3 && matriz_right[0][1] == 4) 
            topiclock 
            fronticlock 
            topclock 
            frontclock 
            topclock 
            rightclock 
            topiclock 
            righticlock 
        elsif (matriz_top[0][1] == 3 && matriz_back[0][1] == 4) 
            fronticlock 
            topclock 
            frontclock 
            topclock 
            rightclock 
            topiclock 
            righticlock 
        end
        exibir_cubo
      end
      
       #(3, 6)
       def treseis
            puts "============== SEGUNDA CAMADA =============="  
            puts "============== Alinhando 3,6 ==============="
            matriz_front = @front.getface
            matriz_left = @left.getface
            matriz_right = @right.getface
            matriz_top = @top.getface
            matriz_back = @back.getface
            matriz_bottom = @bottom.getface
            t = matriz_top.flatten.compact      #top
            top = t.each_slice( 3 ).to_a        
          
            bot = matriz_bottom.flatten.compact    #bottom
            bottom = bot.each_slice( 3 ).to_a        
     
            l = matriz_left.flatten.compact     #left
            left = l.each_slice( 3 ).to_a
    
            r = matriz_right.flatten.compact    #right
            right = r.each_slice( 3 ).to_a
            
            f = matriz_front.flatten.compact    #front
            front = f.each_slice( 3 ).to_a
            
            b = matriz_back.flatten.compact     #back
            back = b.each_slice( 3 ).to_a
        if (matriz_front[0][1] == 3 && matriz_top[2][1] == 6) 
            topiclock 
            lefticlock 
            topclock 
            leftclock 
            topclock 
            frontclock 
            topiclock 
            fronticlock 
        elsif (matriz_left[1][2] == 3 && matriz_front[1][0] == 6) 
            frontclock 
            topclock 
            fronticlock 
            topclock180 
            frontclock 
            topclock180 
            fronticlock 
            topclock 
            lefticlock 
            topiclock 
            leftclock 
        elsif (matriz_left[0][1] == 3 && matriz_top[1][0] == 6) 
            topclock180 
            lefticlock 
            topclock 
            leftclock 
            topclock 
            frontclock 
            topiclock 
            fronticlock 
        elsif (matriz_left[1][0] == 3 && matriz_back[1][0] == 6) 
            backiclock 
            topiclock 
            backclock 
            topclock 
            frontclock 
            topiclock 
            fronticlock 
            topiclock 
            lefticlock 
            topclock 
            leftclock 
            backiclock 
            topclock 
            backclock 
        elsif (matriz_back[1][0] == 3 && matriz_left[1][0] == 6) 
            backiclock 
            topclock 
            backclock 
            lefticlock 
            topclock 
            leftclock 
            topclock 
            frontclock 
            topiclock 
            fronticlock 
            backiclock 
            topiclock 
            backclock 
        elsif (matriz_back[1][2] == 3 && matriz_right[1][2] == 6) 
            backclock 
            topclock 
            backiclock 
            lefticlock 
            topclock 
            leftclock 
            topclock 
            frontclock 
            topiclock 
            fronticlock 
            backclock 
            topclock180 
            backiclock 
        elsif(matriz_back[0][1] == 3 && matriz_top[0][1] == 6)
            topclock 
            lefticlock 
            topclock 
            leftclock 
            topclock 
            frontclock 
            topiclock 
            fronticlock 
        elsif(matriz_right[1][2] == 3 && matriz_back[1][2] == 6)
            backclock 
            topiclock 
            backiclock 
            topclock 
            frontclock 
            topiclock 
            fronticlock 
            topiclock 
            lefticlock 
            topclock 
            leftclock 
            topiclock 
            backclock 
            topclock 
            backiclock 
        elsif(matriz_right[0][1] == 3 && matriz_top[1][2] == 6)
            lefticlock 
            topclock 
            leftclock 
            topclock 
            frontclock 
            topiclock 
            fronticlock 
        elsif(matriz_top[1][0] == 3 && matriz_left[0][1] == 6)
            topclock 
            frontclock 
            topiclock 
            fronticlock 
            topiclock 
            lefticlock 
            topclock 
            leftclock 
        elsif(matriz_top[2][1] == 3 && matriz_front[0][1] == 6)
            topclock180 
            frontclock 
            topiclock 
            fronticlock 
            topiclock 
            lefticlock 
            topclock 
            leftclock 
        elsif(matriz_top[1][2] == 3 && matriz_right[0][1] == 6)
            topiclock 
            frontclock 
            topiclock 
            fronticlock 
            topiclock 
            lefticlock 
            topclock 
            leftclock 
        elsif(matriz_top[0][1] == 3 && matriz_back[0][1] == 6)
            frontclock 
            topiclock 
            fronticlock 
            topiclock 
            lefticlock 
            topclock 
            leftclock 
        end 
        exibir_cubo
        end
        
      #(6, 5)
      def seiscinco
            puts "============== SEGUNDA CAMADA =============="  
            puts "============== Alinhando 6,5 ==============="
            matriz_front = @front.getface
            matriz_left = @left.getface
            matriz_right = @right.getface
            matriz_top = @top.getface
            matriz_back = @back.getface
            matriz_bottom = @bottom.getface
            t = matriz_top.flatten.compact      #top
            top = t.each_slice( 3 ).to_a        
          
            bot = matriz_bottom.flatten.compact    #bottom
            bottom = bot.each_slice( 3 ).to_a        
     
            l = matriz_left.flatten.compact     #left
            left = l.each_slice( 3 ).to_a
    
            r = matriz_right.flatten.compact    #right
            right = r.each_slice( 3 ).to_a
            
            f = matriz_front.flatten.compact    #front
            front = f.each_slice( 3 ).to_a
            
            b = matriz_back.flatten.compact     #back
            back = b.each_slice( 3 ).to_a 
        if(matriz_front[0][1] == 6 && matriz_top[2][1] == 5)
            backiclock 
            topclock 
            backclock 
            topclock 
            leftclock 
            topiclock 
            lefticlock 
        elsif(matriz_left[0][1] == 6 && matriz_top[1][0] == 5)
            topiclock 
            backiclock 
            topclock 
            backclock 
            topclock 
            leftclock 
            topiclock 
            lefticlock 
        elsif(matriz_back[1][0] == 6 && matriz_left[1][0] == 5)
            leftclock 
            topclock 
            lefticlock 
            topclock180 
            leftclock 
            topclock180 
            lefticlock 
            topclock 
            backiclock 
            topiclock 
            backclock 
        elsif(matriz_back[1][2] == 6 && matriz_right[1][2] == 5)
            backclock 
            topclock180 
            backclock180 
            topclock 
            backclock 
            topclock 
            leftclock 
            topiclock 
            lefticlock 
            topclock180 
            backclock 
            topiclock 
            backiclock 
        elsif(matriz_back[0][1] == 6 && matriz_top[0][1] == 5)
            topclock180 
            backiclock 
            topclock 
            backclock 
            topclock 
            leftclock 
            topiclock 
            lefticlock 
        elsif(matriz_right[1][2] == 6 && matriz_back[1][2] == 5)
            backclock 
            topclock 
            backiclock 
            leftclock 
            topiclock 
            lefticlock 
            topiclock 
            backiclock 
            topclock 
            backclock 
            topiclock 
            backclock 
            topclock 
            backiclock 
        elsif(matriz_right[0][1] == 6 && matriz_top[1][2] == 5)
            topclock 
            backiclock 
            topclock 
            backclock 
            topclock 
            leftclock 
            topiclock 
            lefticlock 
        elsif(matriz_top[2][1] == 6 && matriz_front[0][1] == 5)
            topiclock 
            leftclock 
            topiclock 
            lefticlock 
            topiclock 
            backiclock 
            topclock 
            backclock 
        elsif(matriz_top[1][2] == 6 && matriz_right[0][1] == 5)
            leftclock 
            topiclock 
            lefticlock 
            topiclock 
            backiclock 
            topclock 
            backclock 
        elsif(matriz_top[1][0] == 6 && matriz_left[0][1] == 5)
            topclock180 
            leftclock 
            topiclock 
            lefticlock 
            topiclock 
            backiclock 
            topclock 
            backclock 
        elsif(matriz_top[0][1] == 6 && matriz_back[0][1] == 5)
            topclock 
            leftclock 
            topiclock 
            lefticlock 
            topiclock 
            backiclock 
            topclock 
            backclock 
        end
        exibir_cubo
      end   
    
    #(4, 5)  
    def quatrocinco
            puts "============== SEGUNDA CAMADA =============="  
            puts "============== Alinhando 4,5 ==============="
            matriz_front = @front.getface
            matriz_left = @left.getface
            matriz_right = @right.getface
            matriz_top = @top.getface
            matriz_back = @back.getface
            matriz_bottom = @bottom.getface
            t = matriz_top.flatten.compact      #top
            top = t.each_slice( 3 ).to_a        
          
            bot = matriz_bottom.flatten.compact    #bottom
            bottom = bot.each_slice( 3 ).to_a        
     
            l = matriz_left.flatten.compact     #left
            left = l.each_slice( 3 ).to_a
    
            r = matriz_right.flatten.compact    #right
            right = r.each_slice( 3 ).to_a
            
            f = matriz_front.flatten.compact    #front
            front = f.each_slice( 3 ).to_a
            
            b = matriz_back.flatten.compact     #back
            back = b.each_slice( 3 ).to_a 
        if(matriz_front[0][1] == 4 && matriz_top[2][1] == 5)
            backclock 
            topiclock 
            backiclock 
            topiclock 
            righticlock 
            topclock 
            rightclock 
        elsif(matriz_left[0][1] == 4 && matriz_top[1][0] == 5)
            topiclock 
            backclock 
            topiclock 
            backiclock 
            topiclock 
            righticlock 
            topclock 
            rightclock 
        elsif(matriz_back[0][1] == 4 && matriz_top[0][1] == 5)
            topclock180 
            backclock 
            topiclock 
            backiclock 
            topiclock 
            righticlock 
            topclock 
            rightclock 
        elsif(matriz_back[1][2] == 4 && matriz_right[1][2] == 5)
            backclock 
            topclock 
            backiclock 
            topclock180 
            backclock 
            topclock180 
            backiclock 
            topclock 
            righticlock 
            topiclock 
            rightclock 
        elsif(matriz_right[0][1] == 4 && matriz_top[1][2] == 5)
            topclock 
            backclock 
            topiclock 
            backiclock 
            topiclock 
            righticlock 
            topclock 
            rightclock 
        elsif(matriz_top[1][0] == 4 && matriz_left[0][1] == 5)
            righticlock 
            topclock 
            rightclock 
            topclock 
            backclock 
            topiclock 
            backiclock 
        elsif(matriz_top[2][1] == 4 && matriz_front[0][1] == 5)
            topclock 
            righticlock 
            topclock 
            rightclock 
            topclock 
            backclock 
            topiclock 
            backiclock 
        elsif(matriz_top[1][2] == 4 && matriz_right[0][1] == 5)
            topclock180 
            righticlock 
            topclock 
            rightclock 
            topclock 
            backclock 
            topiclock 
            backiclock 
        elsif(matriz_top[0][1] == 4 && matriz_back[0][1] == 5)
            topiclock 
            righticlock 
            topclock 
            rightclock 
            topclock 
            backclock 
            topiclock 
            backiclock 
        end
        exibir_cubo
    end   
    
    #CRUZ AMARELA
        def cruzamarela
            puts "============== CRUZ AMARELA =============="  
            matriz_front = @front.getface
            matriz_left = @left.getface
            matriz_right = @right.getface
            matriz_top = @top.getface
            matriz_back = @back.getface
            matriz_bottom = @bottom.getface
            t = matriz_top.flatten.compact      #top
            top = t.each_slice( 3 ).to_a        
          
            bot = matriz_bottom.flatten.compact    #bottom
            bottom = bot.each_slice( 3 ).to_a        
     
            l = matriz_left.flatten.compact     #left
            left = l.each_slice( 3 ).to_a
    
            r = matriz_right.flatten.compact    #right
            right = r.each_slice( 3 ).to_a
            
            f = matriz_front.flatten.compact    #front
            front = f.each_slice( 3 ).to_a
            
            b = matriz_back.flatten.compact     #back
            back = b.each_slice( 3 ).to_a 
        # Apenas se tiver peça amarela no centro
        if(matriz_top[0][1] != 2 && matriz_top[1][0] != 2 && matriz_top[1][2] != 2 && matriz_top[2][1] != 2)
            #(F R' F' R) U2 F R' F' R2 U2 R'
            frontclock
            righticlock
            fronticlock
            rightclock
            topclock180
            frontclock
            righticlock
            fronticlock
            rightclock180
            topclock180
            righticlock
        elsif(matriz_top[0][1] == 2 && matriz_top[2][1] == 2 && matriz_top[1][0] != 2 && matriz_top[1][2] != 2)
          # Apenas se as peças estivem na vertical --> U F(R U R′ U′) F′
            topclock
            frontclock
            rightclock
            topclock
            righticlock
            topiclock
            fronticlock
        elsif(matriz_top[0][1] != 2 && matriz_top[2][1] != 2 && matriz_top[1][0] == 2 && matriz_top[1][2] == 2)
            # Apenas se as peças estivem na horizontal --> F(R U R′ U′) F′
            frontclock
            rightclock
            topclock
            righticlock
            topiclock
            fronticlock
        elsif(matriz_top[0][1] == 2 && matriz_top[1][0] == 2 && matriz_top[1][2] != 2 && matriz_top[2][1] != 2)
            # Quando as peças estão orientadas no farmato de um L (caso 1)
            # F U R U′ R′ F′
            frontclock
            topclock
            rightclock
            topiclock
            righticlock
            fronticlock
        elsif(matriz_top[0][1] == 2 && matriz_top[1][0] != 2 && matriz_top[1][2] == 2 && matriz_top[2][1] != 2)
            # Quando as peças estão orientadas no farmato de um L (caso 2)
            # U' F U R U′ R′ F′
            topiclock
            frontclock
            topclock
            rightclock
            topiclock
            righticlock
            fronticlock
        elsif(matriz_top[0][1] != 2 && matriz_top[1][0] != 2 && matriz_top[1][2] == 2 && matriz_top[2][1] == 2)
            # Quando as peças estão orientadas no farmato de um L (caso 3)
            # U2 F U R U′ R′ F′
            topclock180
            frontclock
            topclock
            rightclock
            topiclock
            righticlock
            fronticlock
        elsif(matriz_top[0][1] != 2 && matriz_top[1][0] == 2 && matriz_top[1][2] != 2 && matriz_top[2][1] == 2)
            # Quando as peças estão orientadas no farmato de um L (caso 4)
            # U F U R U′ R′ F′
            topclock
            frontclock
            topclock
            rightclock
            topiclock
            righticlock
            fronticlock
        end
        exibir_cubo
      end    
      
        #ORIENTAÇÃO DOS CANTOS  
      def orientacaocantos
            puts "============== ORIENTAÇÃO DOS CANTOS =============="  
            matriz_front = @front.getface
            matriz_left = @left.getface
            matriz_right = @right.getface
            matriz_top = @top.getface
            matriz_back = @back.getface
            matriz_bottom = @bottom.getface
            t = matriz_top.flatten.compact      #top
            top = t.each_slice( 3 ).to_a        
          
            bot = matriz_bottom.flatten.compact    #bottom
            bottom = bot.each_slice( 3 ).to_a        
     
            l = matriz_left.flatten.compact     #left
            left = l.each_slice( 3 ).to_a
    
            r = matriz_right.flatten.compact    #right
            right = r.each_slice( 3 ).to_a
            
            f = matriz_front.flatten.compact    #front
            front = f.each_slice( 3 ).to_a
            
            b = matriz_back.flatten.compact     #back
            back = b.each_slice( 3 ).to_a 
        if(matriz_top[2][0] == 2 && matriz_front[0][2] == 2 && matriz_right[0][2] == 2 && matriz_back[0][0] == 2)
            # 1º CASO
            # R U R' U R U2 R'
            rightclock
            topclock
            righticlock
            topclock
            rightclock
            topclock180
            righticlock
        elsif(matriz_top[2][2] == 2 && matriz_left[0][2] == 2 && matriz_right[0][2] == 2 && matriz_back[0][0] == 2)
            # 1º CASO
            # U R U R' U R U2 R'
            topclock
            rightclock
            topclock
            righticlock
            topclock
            rightclock
            topclock180
            righticlock
        elsif(matriz_top[0][2] == 2 && matriz_back[0][0] == 2 && matriz_left[0][2] == 2 && matriz_front[0][2] == 2)
            # 1º CASO            
            # U2 R U R' U R U2 R'
            topclock180
            rightclock
            topclock
            righticlock
            topclock
            rightclock
            topclock180
            righticlock            
        elsif(matriz_top[0][0] == 2 && matriz_left[0][2] == 2 && matriz_front[0][2] == 2 && matriz_right[0][2] == 2)
            # 1º CASO
            # U' R U R' U R U2 R'
            topiclock
            rightclock
            topclock
            righticlock
            topclock
            rightclock
            topclock180
            righticlock 
        elsif(matriz_top[0][2] == 2 && matriz_left[0][0] == 2 && matriz_front[0][0] == 2 && matriz_right[0][0] == 2)
            # 2º CASO
            # R U2 R′ U′ R U′ R′
            rightclock
            topclock180
            righticlock
            topiclock
            rightclock
            topiclock
            righticlock
        elsif(matriz_top[0][0] == 2 && matriz_front[0][0] == 2 && matriz_right[0][0] == 2 && matriz_back[0][2] == 2)
            # 2º CASO
            # U R U2 R′ U′ R U′ R′
            topclock
            rightclock
            topclock180
            righticlock
            topiclock
            rightclock
            topiclock
            righticlock
        elsif(matriz_top[2][0] == 2 && matriz_right[0][0] == 2 && matriz_back[0][2] == 2 && matriz_left[0][0] == 2)
            # 2º CASO
            # U2 R U2 R′ U′ R U′ R′
            topclock180
            rightclock
            topclock180
            righticlock
            topiclock
            rightclock
            topiclock
            righticlock
        elsif(matriz_top[2][2] == 2 && matriz_back[0][2] == 2 && matriz_left[0][0] == 2 && matriz_front[0][0] == 2)
            # 2º CASO
            # U' R U2 R′ U′ R U′ R′
            topiclock
            rightclock
            topclock180
            righticlock
            topiclock
            rightclock
            topiclock
            righticlock
        elsif(matriz_right[0][0] == 2 && matriz_right[0][2] == 2 && matriz_front[0][2] == 2 && matriz_back[0][2] == 2)
            # 3º CASO
            # R U2 R2 U' R2 U' R2 U2 R
            rightclock
            topclock180
            rightclock180
            topiclock
            rightclock180
            topiclock
            rightclock180
            topclock180
            rightclock
        elsif(matriz_front[0][0] == 2 && matriz_front[0][2] == 2 && matriz_right[0][2] == 2 && matriz_left[0][0] == 2)
            # 3º CASO
            # U R U2 R2 U' R2 U' R2 U2 R
            topclock
            rightclock
            topclock180
            rightclock180
            topiclock
            rightclock180
            topiclock
            rightclock180
            topclock180
            rightclock
        elsif(matriz_right[0][0] == 2 && matriz_right[0][2] == 2 && matriz_back[0][0] == 2 && matriz_front[0][0] == 2)
            # 3º CASO
            # U2 R U2 R2 U' R2 U' R2 U2 R
            topclock180
            rightclock
            topclock180
            rightclock180
            topiclock
            rightclock180
            topiclock
            rightclock180
            topclock180
            rightclock
        elsif(matriz_back[0][0] == 2 && matriz_back[0][2] == 2 && matriz_left[0][2] == 2 && matriz_right[0][0] == 2)
            # 3º CASO
            # U' R U2 R2 U' R2 U' R2 U2 R
            topiclock
            rightclock
            topclock180
            rightclock180
            topiclock
            rightclock180
            topiclock
            rightclock180
            topclock180
            rightclock
        elsif(matriz_front[0][0] == 2 && matriz_front[0][2] == 2 && matriz_back[0][0] == 2 && matriz_back[0][2] == 2)
            # 4º CASO
            # R U2 R' U' R U R' U' R U' R'
            rightclock
            topclock180
            righticlock
            topiclock
            rightclock
            topclock
            righticlock
            topiclock
            rightclock
            topiclock
            righticlock
        elsif(matriz_left[0][0] == 2 && matriz_left[0][2] == 2 && matriz_right[0][0] == 2 && matriz_right[0][2] == 2)
            # 4º CASO
            # U R U2 R' U' R U R' U' R U' R'
            topclock
            rightclock
            topclock180
            righticlock
            topiclock
            rightclock
            topclock
            righticlock
            topiclock
            rightclock
            topiclock
            righticlock
        elsif(matriz_top[0][0] == 2 && matriz_top[2][0] == 2 && matriz_front[0][2] == 2 && matriz_back[0][2] == 2)
            # 5º CASO
            # (R' F' L F) (R F' L' F)
            righticlock
            fronticlock
            leftclock
            frontclock
            rightclock
            fronticlock
            lefticlock
            frontclock
        elsif(matriz_top[2][0] == 2 && matriz_top[2][2] == 2 && matriz_right[0][2] == 2 && matriz_left[0][0] == 2)
            # 5º CASO
            # U (R' F' L F) (R F' L' F)
            topclock
            righticlock
            fronticlock
            leftclock
            frontclock
            rightclock
            fronticlock
            lefticlock
            frontclock
        elsif(matriz_top[2][2] == 2 && matriz_top[0][2] == 2 && matriz_front[0][0] == 2 && matriz_back[0][0] == 2)
            # 5º CASO
            # U2 (R' F' L F) (R F' L' F)
            topclock180
            righticlock
            fronticlock
            leftclock
            frontclock
            rightclock
            fronticlock
            lefticlock
            frontclock
        elsif(matriz_top[0][0] == 2 && matriz_top[0][2] == 2 && matriz_left[0][2] == 2 && matriz_right[0][0] == 2)
            # 5º CASO
            # U' (R' F' L F) (R F' L' F)
            topiclock
            righticlock
            fronticlock
            leftclock
            frontclock
            rightclock
            fronticlock
            lefticlock
            frontclock
        elsif(matriz_top[0][0] == 2 && matriz_top[0][2] == 2 && matriz_front[0][0] == 2 && matriz_front[0][2] == 2)
            # 6º CASO
            # R2 D R' U2 R D' R' U2 R'
            rightclock180
            bottomclock
            righticlock
            topclock180
            rightclock
            bottomiclock
            righticlock
            topclock180
            righticlock
        elsif(matriz_top[0][0] == 2 && matriz_top[2][0] == 2 && matriz_right[0][0] == 2 && matriz_right[0][2] == 2)
            # 6º CASO
            # U R2 D R' U2 R D' R' U2 R'
            topclock
            rightclock180
            bottomclock
            righticlock
            topclock180
            rightclock
            bottomiclock
            righticlock
            topclock180
            righticlock
        elsif(matriz_top[2][0] == 2 && matriz_top[2][2] == 2 && matriz_back[0][0] == 2 && matriz_back[0][2] == 2)
            # 6º CASO
            # U2 R2 D R' U2 R D' R' U2 R'
            topclock180
            rightclock180
            bottomclock
            righticlock
            topclock180
            rightclock
            bottomiclock
            righticlock
            topclock180
            righticlock
        elsif(matriz_top[0][2] == 2 && matriz_top[2][2] == 2 && matriz_left[0][0] == 2 && matriz_left[0][2] == 2)
            # 6º CASO
            # U' R2 D R' U2 R D' R' U2 R'
            topiclock
            rightclock180
            bottomclock
            righticlock
            topclock180
            rightclock
            bottomiclock
            righticlock
            topclock180
            righticlock
        elsif(matriz_top[0][0] == 2 && matriz_top[2][2] == 2 && matriz_front[0][0] == 2 && matriz_right[0][2] == 2)
            # 7º CASO
            # (R' F R B') (R' F' R B)
            righticlock
            frontclock
            rightclock
            backiclock
            righticlock
            fronticlock
            rightclock
            backClock
        elsif(matriz_top[2][0] == 2 && matriz_top[0][2] == 2 && matriz_right[0][0] == 2 && matriz_back[0][0] == 2)
            # 7º CASO
            # U (R' F R B') (R' F' R B)
            topclock
            righticlock
            frontclock
            rightclock
            backiclock
            righticlock
            fronticlock
            rightclock
            backClock
        elsif(matriz_top[0][0] == 2 && matriz_top[2][2] == 2 && matriz_left[0][2] == 2 && matriz_back[0][2] == 2)
            # 7º CASO
            # U2     (R' F R B') (R' F' R B)
            topclock180
            righticlock
            frontclock
            rightclock
            backiclock
            righticlock
            fronticlock
            rightclock
            backClock
        elsif(matriz_top[2][0] == 2 && matriz_top[0][2] == 2 && matriz_front[0][2] == 2 && matriz_left[0][0] == 2)
            # 7º CASO
            # U'     (R' F R B') (R' F' R B)
            topiclock
            righticlock
            frontclock
            rightclock
            backiclock
            righticlock
            fronticlock
            rightclock
            backClock
        end
        exibir_cubo
      end 
      
    #PERMUTAÇÃO DOS CANTOS  
      def permutacoesdoscantos
            puts "============== PERMUTAÇÃO DOS CANTOS =============="  
            matriz_front = @front.getface
            matriz_left = @left.getface
            matriz_right = @right.getface
            matriz_top = @top.getface
            matriz_back = @back.getface
            matriz_bottom = @bottom.getface
            t = matriz_top.flatten.compact      #top
            top = t.each_slice( 3 ).to_a        
          
            bot = matriz_bottom.flatten.compact    #bottom
            bottom = bot.each_slice( 3 ).to_a        
     
            l = matriz_left.flatten.compact     #left
            left = l.each_slice( 3 ).to_a
    
            r = matriz_right.flatten.compact    #right
            right = r.each_slice( 3 ).to_a
            
            f = matriz_front.flatten.compact    #front
            front = f.each_slice( 3 ).to_a
            
            b = matriz_back.flatten.compact     #back
            back = b.each_slice( 3 ).to_a 
            if((matriz_back[0][0] == matriz_back[0][2]) && (matriz_front[0][0] != matriz_front[0][2]) && (matriz_right[0][0] != matriz_right[0][2]) && (matriz_left[0][0] != matriz_left[0][2]))
            # 1º CASO
            # R' F R' B2 R F' R' B2 R2
            righticlock
            frontclock
            righticlock
            backclock180
            rightclock
            fronticlock
            righticlock
            backclock180
            rightclock180
        elsif((matriz_front[0][0] == matriz_front[0][2]) && (matriz_left[0][0] != matriz_left[0][2]) && (matriz_right[0][0] != matriz_right[0][2]) && (matriz_back[0][0] != matriz_back[0][2]))
            # 1º CASO
            # U2 R' F R' B2 R F' R' B2 R2
            topclock180
            righticlock
            frontclock
            righticlock
            backclock180
            rightclock
            fronticlock
            righticlock
            backclock180
            rightclock180
        elsif((matriz_left[0][0] == matriz_left[0][2]) && (matriz_front[0][0] != matriz_front[0][2]) && (matriz_right[0][0] != matriz_right[0][2]) && (matriz_back[0][0] != matriz_back[0][2]))
            # 1º CASO
            # U R' F R' B2 R F' R' B2 R2
            topclock
            righticlock
            frontclock
            righticlock
            backclock180
            rightclock
            fronticlock
            righticlock
            backclock180
            rightclock180
        elsif((matriz_right[0][0] == matriz_right[0][2]) && (matriz_front[0][0] != matriz_front[0][2]) && (matriz_left[0][0] != matriz_left[0][2]) && (matriz_back[0][0] != matriz_back[0][2]))
            # 1º CASO
            # U' R' F R' B2 R F' R' B2 R2
            topiclock
            righticlock
            frontclock
            righticlock
            backclock180
            rightclock
            fronticlock
            righticlock
            backclock180
            rightclock180
        elsif((matriz_back[0][0] != matriz_back[0][2]) && (matriz_front[0][0] != matriz_front[0][2]) && (matriz_left[0][0] != matriz_left[0][2]) && (matriz_right[0][0] != matriz_right[0][2]))
            # 2º CASO
            # R2 U R' (BU'B'U)³ R U' R2
            rightclock180
            topclock
            righticlock
            backclock
            topiclock
            backiclock
            topclock
            backclock
            topiclock
            backiclock
            topclock
            backclock
            topiclock
            backiclock
            topclock
            rightclock
            topiclock
            rightclock180
        end
        exibir_cubo
      end   
      
      #PERMUTAÇÃO DOS MEIOS 
      def permutacoesdosmeios
         puts "============== PERMUTAÇÃO DOS MEIOS =============="  
            matriz_front = @front.getface
            matriz_left = @left.getface
            matriz_right = @right.getface
            matriz_top = @top.getface
            matriz_back = @back.getface
            matriz_bottom = @bottom.getface
            t = matriz_top.flatten.compact      #top
            top = t.each_slice( 3 ).to_a        
          
            bot = matriz_bottom.flatten.compact    #bottom
            bottom = bot.each_slice( 3 ).to_a        
     
            l = matriz_left.flatten.compact     #left
            left = l.each_slice( 3 ).to_a
    
            r = matriz_right.flatten.compact    #right
            right = r.each_slice( 3 ).to_a
            
            f = matriz_front.flatten.compact    #front
            front = f.each_slice( 3 ).to_a
            
            b = matriz_back.flatten.compact     #back
            back = b.each_slice( 3 ).to_a 
          if((matriz_back[0][0] ==  matriz_back[0][1] && matriz_back[0][1] == matriz_back[0][2]) && (matriz_left[0][0] == matriz_left[0][2] && matriz_left[0][2] == matriz_front[0][1]) && (matriz_left[0][1] == matriz_right[0][0] && matriz_right[0][0] == matriz_right[0][2]) && (matriz_front[0][0] == matriz_front[0][2] && matriz_front[0][2] == matriz_right[0][1]))
          # 1º CASO
          # F2 U(R' L F2 R L')U F2
          frontclock180
          topclock
          righticlock
          leftclock
          frontclock180
          rightclock
          lefticlock
          topclock
          frontclock180
      elsif((matriz_right[0][0] == matriz_right[0][1] && matriz_right[0][1] == matriz_right[0][2]) && (matriz_front[0][0] == matriz_front[0][2] && matriz_front[0][2] == matriz_back[0][1]) && (matriz_front[0][1] == matriz_left[0][0] && matriz_left[0][0] == matriz_left[0][2]) && (matriz_left[0][1] == matriz_back[0][0] && matriz_back[0][0] == matriz_back[0][2]))
          # 1º CASO
          # U' F2 U(R' L F2 R L')U F2
          topiclock
          frontclock180
          topclock
          righticlock
          leftclock
          frontclock180
          rightclock
          lefticlock
          topclock
          frontclock180
      elsif((matriz_front[0][0] == matriz_front[0][1] && matriz_front[0][1] == matriz_front[0][2]) && (matriz_left[0][0] == matriz_left[0][2] && matriz_left[0][2] == matriz_right[0][1]) && (matriz_left[0][1] == matriz_back[0][0] && matriz_back[0][0] == matriz_back[0][2]) && (matriz_back[0][1] == matriz_right[0][0] && matriz_right[0][0] == matriz_right[0][2]))
          # 1º CASO
          # U2 F2 U(R' L F2 R L')U F2
          topclock180
          frontclock180
          topclock
          righticlock
          leftclock
          frontclock180
          rightclock
          lefticlock
          topclock
          frontclock180
      elsif((matriz_left[0][0] == matriz_left[0][1] && matriz_left[0][1] == matriz_left[0][2]) && (matriz_front[0][0] == matriz_front[0][2] && matriz_front[0][2] == matriz_right[0][1]) && (matriz_front[0][1] == matriz_back[0][0] &&  matriz_back[0][0] == matriz_back[0][2]) && (matriz_back[0][1] == matriz_right[0][0] && matriz_right[0][0] == matriz_right[0][2]))
          # 1º CASO
          # U F2 U(R' L F2 R L')U F2
          topclock
          frontclock180
          topclock
          righticlock
          leftclock
          frontclock180
          rightclock
          lefticlock
          topclock
          frontclock180
      elsif((matriz_back[0][0] == matriz_back[0][1] && matriz_back[0][1] == matriz_back[0][2]) && (matriz_right[0][0] == matriz_right[0][2] && matriz_right[0][2] == matriz_front[0][1]) && (matriz_right[0][1] == matriz_left[0][0] && matriz_left[0][0] == matriz_left[0][2]) && (matriz_left[0][1] == matriz_front[0][0] && matriz_front[0][0] == matriz_front[0][2]))
          # 3º CASO
          # F2 U'(R' L F2 R L')U' F2
          frontclock180
          topiclock
          righticlock
          leftclock
          frontclock180
          rightclock
          lefticlock
          topiclock
          frontclock180
      elsif((matriz_right[0][0] == matriz_right[0][1] && matriz_right[0][1] == matriz_right[0][2]) && (matriz_front[0][0] == matriz_front[0][2] && matriz_front[0][2] == matriz_left[0][1]) && (matriz_front[0][1] == matriz_back[0][0] && matriz_back[0][0] == matriz_back[0][2]) && (matriz_back[0][1] == matriz_left[0][0] && matriz_left[0][0] == matriz_left[0][2]))
          # 3º CASO
          # U' F2 U'(R' L F2 R L')U' F2
          topiclock
          frontclock180
          topiclock
          righticlock
          leftclock
          frontclock180
          rightclock
          lefticlock
          topiclock
          frontclock180
      elsif((matriz_front[0][0] == matriz_front[0][1] && matriz_front[0][1] == matriz_front[0][2]) && (matriz_left[0][0] == matriz_left[0][2] && matriz_left[0][2] == matriz_back[0][1]) && (matriz_left[0][1] == matriz_right[0][0] && matriz_right[0][0] == matriz_right[0][2]) && (matriz_right[0][1] == matriz_back[0][0] && matriz_back[0][0] == matriz_back[0][2]))
          # 3º CASO
          # U2 F2 U'(R' L F2 R L')U' F2
          topclock180
          frontclock180
          topiclock
          righticlock
          leftclock
          frontclock180
          rightclock
          lefticlock
          topiclock
          frontclock180
      elsif((matriz_left[0][0] == matriz_left[0][1] && matriz_left[0][1] == matriz_left[0][2]) && (matriz_back[0][0] == matriz_back[0][2] && matriz_back[0][2] == matriz_right[0][1]) && (matriz_back[0][1] == matriz_front[0][0] && matriz_front[0][0] == matriz_front[0][2]) && (matriz_front[0][1] == matriz_right[0][0] && matriz_right[0][0] == matriz_right[0][2]))
          # 3º CASO
          # U F2 U'(R' L F2 R L')U' F2
          topclock
          frontclock180
          topiclock
          righticlock
          leftclock
          frontclock180
          rightclock
          lefticlock
          topiclock
          frontclock180
      elsif((matriz_back[0][0] == matriz_back[0][2] && matriz_back[0][2] == matriz_left[0][1]) && (matriz_back[0][1] == matriz_left[0][0] && matriz_left[0][0] == matriz_left[0][2]) && (matriz_right[0][0] == matriz_right[0][2] && matriz_right[0][2] == matriz_front[0][1]) && (matriz_right[0][1] == matriz_front[0][0] && matriz_front[0][0] == matriz_front[0][2]))
          # 2º CASO
          # R' U' R'  F R F' U R F' U' L' U L F
          righticlock
          topiclock
          righticlock
          frontclock
          rightclock
          fronticlock
          topclock
          rightclock
          fronticlock
          topiclock
          lefticlock
          topclock
          leftclock
          frontclock
      elsif((matriz_back[0][0] == matriz_back[0][2] && matriz_back[0][2] == matriz_right[0][1]) && (matriz_back[0][1] == matriz_right[0][0] && matriz_right[0][0] == matriz_right[0][2]) && (matriz_front[0][0] == matriz_front[0][2] && matriz_front[0][2] == matriz_left[0][1]) && (matriz_left[0][0] == matriz_left[0][2] && matriz_left[0][2] == matriz_front[0][1]))
          # 2º CASO
          # U' R' U' R'  F R F' U R F' U' L' U L F
          topiclock
          righticlock
          topiclock
          righticlock
          frontclock
          rightclock
          fronticlock
          topclock
          rightclock
          fronticlock
          topiclock
          lefticlock
          topclock
          leftclock
          frontclock
      elsif((matriz_back[0][0] == matriz_back[0][2] && matriz_back[0][2] == matriz_left[0][1]) && (matriz_back[0][1] == matriz_left[0][0] && matriz_left[0][0] == matriz_left[0][2]) && (matriz_front[0][0] == matriz_front[0][2] && matriz_front[0][2] == matriz_right[0][1]) && (matriz_front[0][1] == matriz_right[0][0] && matriz_right[0][0] == matriz_right[0][2]))
          # 2º CASO
          # U2 R' U' R'  F R F' U R F' U' L' U L F
          topclock180
          righticlock
          topiclock
          righticlock
          frontclock
          rightclock
          fronticlock
          topclock
          rightclock
          fronticlock
          topiclock
          lefticlock
          topclock
          leftclock
          frontclock
      elsif((matriz_front[0][0] == matriz_front[0][2] && matriz_front[0][2] == matriz_left[0][1]) && (matriz_front[0][1] == matriz_left[0][0] && matriz_left[0][0] == matriz_left[0][2]) && (matriz_back[0][0] == matriz_back[0][2] && matriz_back[0][2] == matriz_right[0][1]) && (matriz_back[0][1] == matriz_right[0][0] && matriz_right[0][0] == matriz_right[0][2]))
          # 2º CASO
          # U R' U' R'  F R F' U R F' U' L' U L F
          topclock
          righticlock
          topiclock
          righticlock
          frontclock
          rightclock
          fronticlock
          topclock
          rightclock
          fronticlock
          topiclock
          lefticlock
          topclock
          leftclock
          frontclock
      elsif((matriz_back[0][0] == matriz_back[0][2] && matriz_back[0][2] == matriz_front[0][1]) && (matriz_back[0][1] == matriz_front[0][0] && matriz_front[0][0] == matriz_front[0][2]) && (matriz_left[0][0] == matriz_left[0][2] && matriz_left[0][2] == matriz_right[0][1]) && (matriz_right[0][0] == matriz_right[0][2] && matriz_right[0][2] == matriz_left[0][1]))
          # 4º CASO
          # (R2 U2)^2 R2 U (R2 U2)^2 R2 U'
          rightclock180
          topclock180
          rightclock180
          topclock180
          rightclock180
          topclock
          rightclock180
          topclock180
          rightclock180
          topclock180
          rightclock180
          topiclock
      end 
      exibir_cubo
      end   
      
    #ORGANIZAÇÃO FINAL  
      def juntarcores
            puts "============== CUBO FINALIZADO =============="  
            matriz_front = @front.getface
            matriz_left = @left.getface
            matriz_right = @right.getface
            matriz_top = @top.getface
            matriz_back = @back.getface
            matriz_bottom = @bottom.getface
            t = matriz_top.flatten.compact      #top
            top = t.each_slice( 3 ).to_a        
          
            bot = matriz_bottom.flatten.compact    #bottom
            bottom = bot.each_slice( 3 ).to_a        
     
            l = matriz_left.flatten.compact     #left
            left = l.each_slice( 3 ).to_a
    
            r = matriz_right.flatten.compact    #right
            right = r.each_slice( 3 ).to_a
            
            f = matriz_front.flatten.compact    #front
            front = f.each_slice( 3 ).to_a
            
            b = matriz_back.flatten.compact     #back
            back = b.each_slice( 3 ).to_a 
      #Mover o topo para "juntar" as cores certas
        if(matriz_front[1][1] == matriz_right[0][0])
            topclock
        elsif(matriz_front[1][1] == matriz_back[0][0])
            topclock180
        elsif(matriz_front[1][1] == matriz_left[0][0])
            topiclock
        end
        exibir_cubo
      end
      
end