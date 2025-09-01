#region movimentaçao 

   //Tecla
   teclacima = keyboard_check(vk_up)
   teclabaixo = keyboard_check(vk_down)
   
   movimento = - teclacima + teclabaixo
   
   y += movimento * velocidade 
   
   
   
   if y <= 0 or y >= room_height{
	   y -= movimento * velocidade 
   }
   #endregion