// https://suporte.dominioatendimento.com/sgsc/faces/solucao.html?codigo=8812
// Leiaute - Definição de Fórmulas

// Evento 370
// DESCONTO DE VALE TRANSPORTE 6%

VALOR SalHoras;
VALOR SalHorasRescisao;
VALOR SalDias;
VALOR Comissao;
VALOR ComissaoReflexo;
VALOR SomaSal;

VALOR HorasFaltas;
VALOR HorasFaltasDSR;
VALOR SomaFaltas;

VALOR Sal;

VALOR Taxa;
VALOR Desconto;

VALOR Fixo;
VALOR Fixo2;
VALOR Fixo3;

VALOR Fornecido;

VALOR DescFaltaAtestado;
VALOR DescNaoUtilizado;
VALOR SomaDesc;

SalHoras = VALEVE(1);
SalHorasRescisao = VALEVE(9179);
SalDias = VALEVE(8781);
SomaSal = SalHoras + SalHorasRescisao + SalDias;

Comissao = VALEVE(37);
ComissaoReflexo = VALEVE(853);
se(SomaSal < 0.01);
 SomaSal = Comissao + ComissaoReflexo;
fimse;

HorasFaltas = VALEVE(40);
HorasFaltasDSR = VALEVE(42);
SomaFaltas = HorasFaltas + HorasFaltasDSR;

Sal = SomaSal - SomaFaltas;

Taxa = 0.06;
Desconto = Sal * Taxa;
VINF = Taxa * 100;

Fornecido = VALEVE(9668);

DescFaltaAtestado = VALEVE(415);
DescNaoUtilizado = VALEVE(346);
SomaDesc = Desconto + DescFaltaAtestado + DescNaoUtilizado;

se(Fornecido > 0);
  se (SomaDesc >= Fornecido);
    Desconto = Fornecido - DescFaltaAtestado - DescNaoUtilizado;
  fimse;

  se(Desconto >= Fornecido);
    Desconto = Fornecido;
  fimse;
fimse;

Fixo = VALEVE(385);
Fixo2 = VALEVE(201);
Fixo3 = VALEVE(48);

se (Fixo > 0);
  Desconto = 0;
fimse;

se (Fixo2 > 0);
  Desconto = 0;
fimse;

se (Fixo3 > 0);
  Desconto = 0;
fimse;

VCALC = Desconto;