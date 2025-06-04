// https://suporte.dominioatendimento.com/sgsc/faces/solucao.html?codigo=8812
// Leiaute - Definição de Fórmulas

// Evento 426
// DESC VALE REFEICAO/MERCADO 20%

VINF = 0;
VCALC = 0;

VALOR Fornecido;
VALOR Taxa;
VALOR Desconto;
VALOR NaoUtilizado;
VALOR NaoUtilizado2;
VALOR NaoUtilizado3;
VALOR NaoUtilizado4;

VALOR Fixo;

Fornecido = VALEVE(9382);

se(Fornecido > 0);
  NaoUtilizado = VALEVE(202);  
  NaoUtilizado2 = VALEVE(364);
  NaoUtilizado3 = VALEVE(405);
  NaoUtilizado4 = VALEVE(448);
  Taxa = 0.20;
  Desconto = (Fornecido - NaoUtilizado - NaoUtilizado2 - NaoUtilizado3) * Taxa;
  VINF = Taxa * 100;
fimse;

Fixo = VALEVE(386);
se (Fixo > 0);
  Desconto = 0;
fimse;

VCALC = Desconto;