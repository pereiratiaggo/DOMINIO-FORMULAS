// https://suporte.dominioatendimento.com/sgsc/faces/solucao.html?codigo=8812
// Leiaute - Definição de Fórmulas

// Evento 429
// DESC VALE REFEICAO/MERCADO 20%

VINF = 0;
VCALC = 0;

VALOR Fornecido;
VALOR Taxa;
VALOR Desconto;

VALOR Fixo;

Fornecido = VALEVE(9382);
se(Fornecido > 0);
  Taxa = 0.10;
  Desconto = Fornecido * Taxa;
  VINF = Taxa * 100;
fimse;

Fixo = VALEVE(386);
se (Fixo > 0);
  Desconto = 0;
fimse;

VCALC = Desconto;