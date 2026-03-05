VINF = 0;
VCALC = 0;

VALOR Fornecido;
VALOR Taxa;
VALOR Desconto;
VALOR NaoUtilizado;
VALOR NaoUtilizado2;
VALOR NaoUtilizado3;
VALOR NaoUtilizado4;

VALOR Faltas;

VALOR Fixo;

Fornecido = VALEVE(9382);

Faltas = VALEVE(40);

Taxa = 0.10;  
se (Faltas > 0);
  Taxa = 0.20;  
fimse;

se(Fornecido > 0);
  NaoUtilizado = VALEVE(202);  
  NaoUtilizado2 = VALEVE(364);
  NaoUtilizado3 = VALEVE(405);  
  NaoUtilizado4 = VALEVE(448);
  Desconto = (Fornecido - NaoUtilizado - NaoUtilizado2 - NaoUtilizado3 - NaoUtilizado4) * Taxa;
  VINF = Taxa * 100;
fimse;

Fixo = VALEVE(386);
se (Fixo > 0);
  Desconto = 0;
fimse;

VCALC = Desconto;