class Face 
   @@historymoviments = []
    def initialize(face)
      @face = face
    end
    def getface
      @face
    end
     def turnclock
       #elementos da ponta
       aux1, aux2 = 0, 0
        aux1 = @face[0][0]
        aux2 = @face[0][2]
        @face[0][2] = aux1
        aux1 = @face[2][2]
        @face[2][2] = aux2
        aux2 = @face[2][0]
        @face[2][0] = aux1
        @face[0][0] = aux2

       #elementos do meio
        aux1 = @face[0][1]
        aux2 = @face[1][2]
        @face[1][2] = aux1
        aux1 = @face[2][1]
        @face[2][1] = aux2
        aux2 = @face[1][0]
        @face[1][0] = aux1
        @face[0][1] = aux2
       
     end
     
        def turnclock180
            turnclock
            turnclock
        end
        
        def turniclock
          turnclock
          turnclock
          turnclock
=begin
Outra possível alternativa
            rotated = []
            @face.transpose.each do |x| 
              rotated << x.reverse 
            end 
            new = []
            rotated.transpose.each do |y| 
              new << y.reverse 
            end 
             new.replace(@face.map!(&:reverse).transpose)
=end              
        end  
#TOP     
        def gettop
          top = []
          top[0] = [@face[0][0], @face[0][1], @face[0][2]]
            return top
        end
        
        def gettopi
          top = []
          top[0]= [@face[0][2], @face[0][1], @face[0][0]]
            return top
        end
        
        def settop(top)
          @face[0][0] = top[0][0] 
          @face[0][1] = top[0][1]
          @face[0][2] = top[0][2]
        end
#BOTTOM 
        def getbottom
          bottom = []
          bottom[0] = [@face[2][0], @face[2][1], @face[2][2]]
            return bottom
        end 
        
        def getbottomi
          bottom = []
          bottom[0] = [@face[2][2], @face[2][1], @face[2][0]] 
            return bottom
        end
        
        def setbottom(bottom)
          @face[2][0] = bottom[0][0]
          @face[2][1] = bottom[0][1]
          @face[2][2] = bottom[0][2]
        end
#CENTERH
        def getcenterh
          centerh = []
          centerh[0] = [@face[1][0], @face[1][1], @face[1][2]]
            return centerh
        end
        
        def setcenterh(centerh)
          @face[1][0] = centerh[0]
          @face[1][1] = centerh[1]
          @face[1][2] = centerh[2]          
        end
#LEFT
        def getleft 
          left = []
          left[0] = [@face[0][0], @face[1][0], @face[2][0]]
            return left
        end
        
        def getlefti
          left = []
          left[0]= [@face[2][0], @face[1][0], @face[0][0]]
            return left
        end
    
        def setleft(left)
          @face[0][0] = left[0][0]   #1
          @face[1][0] = left[0][1]  #0
          @face[2][0] = left[0][2]  #2
        end 
#RIGHT 
        def getright
          right = []
          right[0] = [@face[0][2], @face[1][2], @face[2][2]]
            return right
        end

        def getrighti
          right = []
          right[0] = [@face[2][2], @face[1][2], @face[0][2]]
            return right
        end
        
        def setright(right)
          @face[0][2] = right[0][0]       #0
          @face[1][2] = right[0][1]       #2
          @face[2][2] = right[0][2]       #1
        end
        
#CENTERV
        def getcenterv
          centerv = []
          centerv[] = [@face[0][1], @face[1][1], @face[2][1]]
            return centerv
        end 
    
        def setcenterv (centerv)
          @face[0][1] = centerv[0]
          @face[1][1] = centerv[1]
          @face[2][1] = centerv[2]        
        end
    
end 