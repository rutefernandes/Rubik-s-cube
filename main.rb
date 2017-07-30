require_relative './Face'
require_relative './Cube'

class Test
=begin
     Branco(Bottom): 1
     Amarelo(Top): 2
     Verde(Front): 3
     Laranja(Right): 4
     Azul(Back): 5
     Vermelho(Left): 6
=end
  def chamaclasses
        front = Array.new(3){Array.new(3)}
        top = Array.new(3){Array.new(3)}
        right = Array.new(3){Array.new(3)}
        left = Array.new(3){Array.new(3)}
        bottom = Array.new(3){Array.new(3)}
        back = Array.new(3){Array.new(3)}
      
      for i in 0..front.size-1 
          for j in 0..front.size-1
            front[i][j]=3 
          end 
        end 
      
      for x in 0..top.size-1
        for y in 0..top.size-1
            top[x][y]=2
        end
      end
      
      for a in 0..right.size-1
        for b in 0..right.size-1
            right[a][b]=4
        end
      end     
      
       for m in 0..left.size-1
        for n in 0..left.size-1
            left[m][n]=6
        end
      end      
      
      for r in 0..bottom.size-1
        for q in 0..bottom.size-1
            bottom[r][q]=1
        end
      end   
      
      for w in 0..back.size-1
        for k in 0..back.size-1
            back[w][k]=5
        end
      end     
      
        matriz_front = Face.new(front)
        matriz_top = Face.new(top)
        matriz_right = Face.new(right)
        matriz_left = Face.new(left)
        matriz_bottom = Face.new(bottom)
        matriz_back = Face.new(back)

        #cube
        cubo = Cube.new(matriz_front, matriz_back, matriz_top, matriz_bottom, matriz_left, matriz_right)
        
  #Embaralhando
    cubo.backclock
    cubo.frontclock       
    cubo.lefticlock
    cubo.topclock180
    cubo.backiclock
    cubo.bottomclock
    cubo.rightclock
    cubo.exibir_cubo
    
  #RESOLU플O   
    #primeira camada
    cubo.umtres
    cubo.umseis
    cubo.umcinco
    cubo.umquatro
    cubo.umtresquatro
    cubo.umtresseis
    cubo.umseiscinco
    cubo.umquatrocinco
    
    #segunda camada
    cubo.tresquatro
    cubo.treseis
    cubo.seiscinco
    cubo.quatrocinco
    
    #cruzamarela
    cubo.cruzamarela
    
    #ORIENTA플O DOS CANTOS
    cubo.orientacaocantos
    
    #PERMUTA플O DOS CANTOS 
    cubo.permutacoesdoscantos
    
    #PERMUTA플O DOS MEIOS
    cubo.permutacoesdosmeios
    
    #JUNTAR CORES FINAIS 
    cubo.juntarcores
    
  #  cubo.exibir_cubo

  end
end 
c = Test.new
puts c.chamaclasses