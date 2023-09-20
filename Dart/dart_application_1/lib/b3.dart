//Ex B3
void mapaIdadeNomes() {  
  var mapList = Map<int, String>();
  mapList[21]="Leonardo";
  mapList[20]="Laura";
  mapList[22]="Thiago";
  
  mapList.forEach((key, value) {
    print('$key : $value');
  });	
}
void main() {
  mapaIdadeNomes(); //3B
}