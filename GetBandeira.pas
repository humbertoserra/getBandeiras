
// utilizei tipos enumerados, caso prefiram lancar diretamente o valor da tabela obtida neste link
//
// ex. (Nome: 'VISA'; Valor: 01)
//
// https://www.nfe.fazenda.gov.br/portal/listaConteudo.aspx?tipoConteudo=/NJarYc9nus=
// Tabela de bandeiras de Cartões de Crédito/Débito - Publicada em 16/03/2021

program ExemploEnumBandeiras;

{$APPTYPE CONSOLE}

uses
	System.SysUtils;

type
	TBandeiraCartao = (bcNenhum, bcVisa, bcMasterCard, bcAmericanExpress, bcSorocred, bcDinersClub,
		  bcElo, bcHipercard, bcAura, bcCabal, bcAlelo, bcBanesCard, bcCalCard, bcCredz,
		  bcDiscover, bcGoodCard, bcGreenCard, bcHiper, bcJcB, bcMais, bcMaxVan, bcPolicard,
		  bcRedeCompras, bcSodexo, bcValeCard, bcVerocheque, bcVR, bcTicket);
	  

function GetBandeiraEnum(const tBand: string): Integer;
const
	BandeiraMap: array [0..32] of record
		Nome: string;
		Valor: TBandeiraCartao;
	end = (
		(Nome: 'VISA'; Valor: bcVisa),
		(Nome: 'DEBVISA'; Valor: bcVisa),
		(Nome: 'MASTERCARD'; Valor: bcMasterCard)
		(Nome: 'DEBMASTER'; Valor: bcMasterCard),
		(Nome: 'MASTER'; Valor: bcMasterCard),
		(Nome: 'AMERICAN'; Valor: bcAmericanExpress),
		(Nome: 'AMEX'; Valor: bcAmericanExpress),
		(Nome: 'SOROCRED'; Valor: bcSorocred),
		(Nome: 'DINERS'; Valor: bcDinersClub),
		(Nome: 'ELO'; Valor: bcElo),
		(Nome: 'DEBELO'; Valor: bcElo),
		(Nome: 'HIPERCARD'; Valor: bcHipercard),
		(Nome: 'HIPER'; Valor: bcHipercard),
		(Nome: 'AURA'; Valor: bcAura),
		(Nome: 'CABAL'; Valor: bcCabal),
		(Nome: 'ALELO'; Valor: bcAlelo), 
		(Nome: 'BANES'; Valor: bcBanesCard), 
		(Nome: 'CALCARD'; Valor: bcCalCard),
		(Nome: 'CREDZ'; Valor: bcCredz), 
		(Nome: 'DISCOVER'; Valor: bcDiscover), 
		(Nome: 'GOODCARD'; Valor: bcGoodCard), 
		(Nome: 'GREENCARD'; Valor: bcGreenCard), 
		(Nome: 'JCB'; Valor: bcJcB), 
		(Nome: 'MAIS'; Valor: bcMais), 
		(Nome: 'MAXVAN'; Valor: bcMaxVan), 
		(Nome: 'POLICARD'; Valor: bcPolicard), 
		(Nome: 'REDECOMPRAS'; Valor: bcRedeCompras), 
		(Nome: 'SODEXO'; Valor: bcSodexo), 
		(Nome: 'VALECARD'; Valor: bcValeCard), 
		(Nome: 'VEROCHEQUE'; Valor: bcVerocheque), 
		(Nome: 'VR'; Valor: bcVR),
		(Nome: 'TICKET'; Valor: bcTicket)
	);

var
	i: Integer;
begin
   // pré-define o valor padrao 99 - Caso a bandeira não seja encontrada.
	Result := 99;

	for i := Low(BandeiraMap) to High(BandeiraMap) do
	begin
		if AnsiIndexStr(UpperCase(tBand), [BandeiraMap[i].Nome]) >= 0 then
		begin
			Result := BandeiraMap[i].Valor;
			Exit;
		end;
	end;

	
end;
		  