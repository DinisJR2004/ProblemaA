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

(* Função que imprime na tela a frase "Digite número de 0 a 10000:" *)
print_string "Digite número de 0 a 10000:\n"; 

(* Leitura do número *)
let n = read_int () in

(* Verifica se o número está dentro do intervalo válido *)
if n < 0 || n > 10000 then 
  (* Número inválido *)
  print_endline "Número inválido"
else
  (* Cria um vetor de tamanho n+1 e inicializa com zeros *)
  let motzkin_numbers = Array.make (n+1) 0 in

  (* Calcula os números de Motzkin e armazena no vetor *)
  for i = 0 to n do
    motzkin_numbers.(i) <- 
      if i < 2 then 1
      else ((2*i + 1) * motzkin_numbers.(i-1) + (3*i - 3) * motzkin_numbers.(i-2)) / (i + 2)
  done;

  (* Imprime o resultado *)
  print_int motzkin_numbers.(n);
  print_newline();  (* Quebra de linha para melhorar a legibilidade *)
