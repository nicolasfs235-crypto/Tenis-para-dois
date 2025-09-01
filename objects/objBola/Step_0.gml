#region Movimentação
  
image_angle += velocidade

x += moviX * velocidade
y += moviY * velocidade

velocidade += 0.1
#endregion 

#region colisão
     //colisão da tela 
	 if y <= 0 or y >= room_height{
		moviY *= -1
	 }
	 if x<= 0 or x >= room_width{
		 moviX *= -1
	 }
	  //colisao com o player
	  colisaoverticalcima = place_meeting(x,  y -10, objPlayer1) or place_meeting(x, y +10 ,objPlayer1)
	  colisaoverticalbaixo = place_meeting(x, y -10 , objPlayer1) or place_meeting(x, y +10 ,objPlayer2)
	  colisaohorizontalp1 = place_meeting(x -10, y, objPlayer1)
	  colisaohorizontalp2 = place_meeting(x +10, y , objPlayer2)
	  
      if colisaohorizontalp1{	  
      moviX = 1
     }	 
      if colisaohorizontalp2{	  
      moviX = 1
	  }
	  if colisaoverticalcima{
	  moviX = 1
	  }
	  if colisaoverticalbaixo{	  
      moviX = 1
	  }
	  
#endregion