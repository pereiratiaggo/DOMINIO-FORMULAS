// https://suporte.dominioatendimento.com/sgsc/faces/solucao.html?codigo=8812
// Leiaute - Definição de Fórmulas

// Evento 403
// DESCONTO DE VALE TRANSPORTE 5%

VALOR SalHoras;
VALOR SalHorasRescisao;
VALOR Comissao;
VALOR ComissaoReflexo;
VALOR ComissaoGarantia;
VALOR SomaSal;
VALOR AdicionalAcumuloFuncao;

VALOR HorasFaltas;
VALOR HorasFaltasDSR;
VALOR SomaFaltas;

VALOR Sal;

VALOR Taxa;
VALOR Desconto;

VALOR Fixo;
VALOR Fixo2;

VALOR Fornecido;

VALOR DescFaltaAtestado;
VALOR DescNaoUtilizado;
VALOR SomaDesc;

SalHoras = VALEVE(1);
SalHorasRescisao = VALEVE(9179);
AdicionalAcumuloFuncao = VALEVE(437);
SomaSal = SalHoras + SalHorasRescisao + AdicionalAcumuloFuncao;

Comissao = VALEVE(37);
ComissaoReflexo = VALEVE(853);
ComissaoGarantia = VALEVE(8702);
se(SomaSal < 0.01);
 SomaSal = Comissao + ComissaoReflexo + ComissaoGarantia;
fimse;

HorasFaltas = VALEVE(40);
HorasFaltasDSR = VALEVE(42);
SomaFaltas = HorasFaltas + HorasFaltasDSR;

Sal = SomaSal - SomaFaltas;

Taxa = 0.05;
Desconto = Sal * Taxa;
VINF = Taxa * 100;

Fixo = VALEVE(201);
Fixo2 = VALEVE(48);

Fornecido = VALEVE(9668);

DescFaltaAtestado = VALEVE(415);
DescNaoUtilizado = VALEVE(346);
SomaDesc = Desconto + DescFaltaAtestado + DescNaoUtilizado; 

se(Fornecido>0);
  se (SomaDesc >= Fornecido);
    Desconto = Fornecido - DescFaltaAtestado - DescNaoUtilizado;    
  fimse;  

  se(Desconto>=Fornecido);
    Desconto = Fornecido;
  fimse;
fimse;

se (Fixo>0);
  Desconto = 0;
fimse;

se (Fixo2>0);
  Desconto = 0;
fimse;

VCALC = Desconto;