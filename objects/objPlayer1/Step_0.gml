#region movimentaçao 

   //Tecla
   teclacima = keyboard_check(ord("W"))
   teclabaixo = keyboard_check(ord("S"))
   
   movimento = - teclacima + teclabaixo
   
   y += movimento * velocidade 
   
   
   
   if y <= 0 or y >= room_height{
	   y -= movimento * velocidade 
   }
   #endregion