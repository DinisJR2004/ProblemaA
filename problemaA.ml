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

  É defina uma variável "n" que usa a função read_int() para ler um número inteiro fornecido pelo usuário.

*)
let n = read_int ()


(*
   
  A função cria um array chamado "v" com 10001 elementos, cada um inicializado com o valor inteiro zero.

*)

let v = Array.make 10001 (Z.of_int 0)

(*
   
  É defina uma variável "num" que armazenará o valor final da sequência de Motzkin calculada para o número fornecido pelo usuário.
  Na linha 42 temos uma condição que verifica se o número fornecido está dentro do intervalo válido de 0 a 10000, se não estiver é devolvido o número 0.
  Na linha 43 é defina uma função recursiva chamada "motz" que calcula a sequência de Motzkin.
  Na linha 44 há uma verificação, se n < 2, o output é igual a 1 senão é calculado o número de Motzkin do valor introduzido pelo usuário.
  Na linha 46 temos uma condição que verifica se o número já foi calculado antes e armazenado no array "v". 
  Se já foi calculado, o valor armazenado no array é retornado imediatamente, evitando a necessidade de calcular novamente.
  Na linha 55 é armazenado o valor calculado no array "v" para uso posterior.
  
*)

let num =
  if n >= 0 && n <= 10000 then
    let rec motz n =
      if n < (Z.of_int 2) then Z.of_int 1
      else 
        if (v.(Z.to_int n) != (Z.of_int 0)) then v.(Z.to_int n)
        else
          let result = Z.div
            (Z.add (Z.mul (Z.add (Z.mul (Z.of_int 2) n) (Z.of_int 1))
                  (motz (Z.sub n (Z.of_int 1))))
                  (Z.mul (Z.sub (Z.mul (Z.of_int 3) n) (Z.of_int 3))
                  (motz (Z.sub n (Z.of_int 2)))))
            (Z.add n (Z.of_int 2))
          in
          v.(Z.to_int n) <- result;
          result
    in
    motz (Z.of_int n)
  else 
    (Z.of_int 0)


(*
   
  Função para imprimir o valor final da sequência de Motzkin calculado.

*)

let () = print_endline (Z.to_string num)


(*
   
    Fontes:

    https://dsheets.github.io/codoc/zarith.1.3/z/
    https://docs.ocaml.pro/docs/LIBRARY.zarith@zarith.1.11/Z/index.html
    http://www.decom.ufop.br/romildo/2015-1/bcc222/slides/progfunc.pdf
    https://cs3110.github.io/textbook/cover.html
    https://mathworld.wolfram.com/MotzkinNumber.html

*)
