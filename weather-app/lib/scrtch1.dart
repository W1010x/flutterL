import 'dart:io';
void main() {
  performTasks();
}

void performTasks() async{
  task1();
 String task2Result =await task2();
  task3(task2Result);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future task2()  async{
Duration threeSeconds=Duration(seconds: 3);
String result;
await Future.delayed(threeSeconds,(){ // this is async method
  String result = 'task 2 data';
  print('Task 2 complete');
});
}

void task3(String task2Data) {
  String result = 'task 3 data';
  print('Task 3 complete$task2Data');
}