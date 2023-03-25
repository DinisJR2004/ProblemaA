(****************************************************************************************************)
(*                                                                                                  *)
(*                                        Programação Funcional                                     *)
(*                                             Problema A                                           *)
(*                                                                                                  *)
(*                                                                                                  *)
(*     Realizado por:   Dinis Ramos     - nº 49471                                                  *)
(*                      Ricardo Andrade - nº 49653                                                  *)
(*                                                                                                  *)
(****************************************************************************************************)

(* 

  Função que imprime na tela a frase "Digite número de 0 a 10000:" ;
   
*)

let () = print_string "Digite número de 0 a 10000:\n" in


(* 

  Leitura do número ;
   
*)

let n = read_int () in

(* 
 
  Função que faz a verificação do valor inserido ; 
  Se o número estiver fora do intervalo é impresso no ecrã "Número inválido" ;
  Senão passa para o calculo do número de Motzkin ;
   
*)

let () =

if n < 0 || n > 10000 then print_endline "Número inválido"

else
  
  let rec motz n =
    
    if n < 2 then 1
    
    else ((2*n + 1) * motz(n - 1) + (3*n - 3) * motz(n - 2)) / (n + 2)
  in

print_int (motz n)

in()


--------------------------------------------------------------------------------------------------------

let () = print_string "Digite número de 0 a 10000:\n" in

let n = read_int () in

if n < 0 || n > 10000 then print_endline "Número inválido"

else
  let motz_array = Array.make (n+1) 0 in

  let rec motz n =
    if n < 2 then
      begin
        motz_array.(n) <- 1;
        1
      end
    else
      begin
        if motz_array.(n) = 0 then
          motz_array.(n) <- ((2*n + 1) * motz(n-1) + (3*n - 3) * motz(n-2)) / (n+2);
        motz_array.(n)
      end
  in

  let result = motz n in
  print_int result;
  print_newline ();
  Array.iter print_int motz_array

