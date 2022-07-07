



class DataRepository {

  

}

class FinanceValue {
  final String data;
  final String text;
  final double price;
  final List<String> labels;

  FinanceValue({ required this.data, required this.text, required this.price, this.labels = const [] });
}

final List<FinanceValue> registers = <FinanceValue>[
  FinanceValue(data: "08/09/2021", text: "Ferreira costa 9/10", price:	42.90, labels: ["santander", "apgastos"]),
  FinanceValue(data: "18/09/2021", text: "Mercpago*mercadolivre", price:	29.90, labels: ["santander", "informatica"]),

  FinanceValue(data: "03/06/2022", text: "Drogasil", price:	71.13, labels: ["btg", "medicamento"]),
  FinanceValue(data: "16/06/2022", text: "Pão De Açúcar", price:	192.15, labels: ["btg", "alimentação"]),
  FinanceValue(data: "16/06/2022", text: "Posto Cunha", price:	57.92, labels: ["btg", "viagem"]),
  FinanceValue(data: "16/06/2022", text: "Kaline Lopes", price:	64.98, labels: ["btg", "viagem"]),
  FinanceValue(data: "16/06/2022", text: "Kaline Lopes", price:	59.00, labels: ["btg", "viagem"]),
  FinanceValue(data: "21/06/2022", text: "Drogasil", price:	90.59, labels: ["btg", "medicamento"]),

  FinanceValue(data: "01/01/2022", text:	"Ame Digital - 8/10", price:	546.43, labels: ["nubank"]),
  FinanceValue(data: "01/01/2022", text:	"Mercadolivre*Mercadoli - 8/10", price:		175.53, labels: ["nubank"]),
  FinanceValue(data: "01/01/2022", text:	"Amazon.Com.Br - 7/10", price:	35.99, labels: ["nubank"]),
  FinanceValue(data: "01/01/2022", text:	"Amazon.Com.Br - 9/10", price:	47.52, labels: ["nubank"]),
  FinanceValue(data: "09/05/2022", text:	"Pg*William Vendas - 02/03", price:	984.11, labels: ["nubank"]),
  FinanceValue(data: "30/05/2022", text:	"Pag*Lightisgood", price:	347.40, labels: ["nubank"]),
  FinanceValue(data: "31/05/2022", text:	"Uber *Trip", price:	7.93, labels: ["nubank"]),
  FinanceValue(data: "31/05/2022", text:	"Uber *Trip", price:	14.91, labels: ["nubank"]),
  FinanceValue(data: "31/05/2022", text:	"Uber *Trip", price:	12.34, labels: ["nubank"]),
  FinanceValue(data: "02/06/2022", text:	"Uber *Trip", price:	19.90, labels: ["nubank"]),
  FinanceValue(data: "02/06/2022", text:	"Uber *Trip", price:	11.97, labels: ["nubank"]),
  FinanceValue(data: "02/06/2022", text:	"Uber *Trip", price:	10.90, labels: ["nubank"]),
  FinanceValue(data: "02/06/2022", text:	"DL*Google Superc", price:	27.90, labels: ["nubank", "game"]),
  FinanceValue(data: "02/06/2022", text:	"DL*Google Superc", price:	27.90, labels: ["nubank", "game"]),
  FinanceValue(data: "03/06/2022", text:	"Uber *Trip", price:	8.95, labels: ["nubank"]),
  FinanceValue(data: "03/06/2022", text:	"Recanto Paraibano", price:	240.50, labels: ["nubank"]),
  FinanceValue(data: "04/06/2022", text:	"Cornershop Brasil Tecn", price:	293.22, labels: ["nubank"]),
  FinanceValue(data: "04/06/2022", text:	"Uber *Trip", price:	9.94, labels: ["nubank"]),
  FinanceValue(data: "04/06/2022", text:	"Uber *Trip	", price:	14.92, labels: ["nubank"]),
  FinanceValue(data: "04/06/2022", text:	"Mac Donalds", price:	41.00, labels: ["nubank"]),
  FinanceValue(data: "04/06/2022", text:	"Ifood *Ifood", price:	50.15, labels: ["nubank"]),
  FinanceValue(data: "05/06/2022", text:	"Ifood *Ifood", price:	55.39, labels: ["nubank"]),
  FinanceValue(data: "06/06/2022", text:	"Bompreco", price:	33.49, labels: ["nubank"]),
  FinanceValue(data: "06/06/2022", text:	"Credito de Cornershop Brasil Tecn", price:	-31.38, labels: ["nubank"]),
  FinanceValue(data: "07/06/2022", text:	"Uber *Trip", price:	19.94, labels: ["nubank"]),
  FinanceValue(data: "08/06/2022", text:	"Uber *Trip", price:	14.96, labels: ["nubank"]),
  FinanceValue(data: "09/06/2022", text:	"Dm *Nintendo", price:	192.55, labels: ["nubank"]),
  FinanceValue(data: "10/05/2022", text:	"Pag*Lightisgood", price:	418.00, labels: ["nubank"]),
  FinanceValue(data: "10/06/2022", text:	"Booking.Com Hotel On B", price:	1290.00, labels: ["nubank"]),
  FinanceValue(data: "11/06/2022", text:	"Bomprec Parque Amorim", price:	112.67, labels: ["nubank"]),
  FinanceValue(data: "11/06/2022", text:	"Ifood *Ifood", price:	56.99, labels: ["nubank"]),
  FinanceValue(data: "12/06/2022", text:	"Ifood *Ifood", price:	157.89, labels: ["nubank"]),
  FinanceValue(data: "13/06/2022", text:	"Disney Plus", price:	27.90, labels: ["nubank"]),
  FinanceValue(data: "13/06/2022", text:	"Amacon.Com.Br Digital", price:	19.90, labels: ["nubank"]),
  FinanceValue(data: "19/06/2022", text:	"Convershop Brasil Tecn", price:	296.18, labels: ["nubank"]),
  FinanceValue(data: "19/06/2022", text:	"Convershop Brasil Tecn", price:	6.03, labels: ["nubank"]),
  FinanceValue(data: "23/06/2022", text:	"Ifood *Ifood", price:	68.90, labels: ["nubank"]),
  FinanceValue(data: "26/06/2022", text:	"Netflix.Com", price:	55.90, labels: ["nubank"]),
  FinanceValue(data: "26/06/2022", text:	"Pag*Lightisgood", price:	355.40, labels: ["nubank"]),
  FinanceValue(data: "29/06/2022", text:	"Drogasil", price:	82.49, labels: ["nubank"]),
  FinanceValue(data: "29/06/2022", text:	"Ebanx*Spotify", price:	34.90, labels: ["nubank"]),
];

